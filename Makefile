
# Variables
OLM_VERSION := $(shell yq .dependencies.flutter_olm < pubspec.yaml | sed 's/"//g')
DOWNLOAD_PATH := https://github.com/famedly/olm/releases/download/v$(OLM_VERSION)/olm.zip

# Directories
ASSETS_DIR := assets/js
PACKAGE_DIR := $(ASSETS_DIR)/package
ZIP_FILE := $(ASSETS_DIR)/olm.zip


.PHONY: all run_dev_web run_dev_mobile run_unit clean upgrade lint format build_dev_mobile help

all: lint format run_dev_mobile

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

run_unit: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format .

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade

get_packages: clean ## Getting dependencies
	@echo "╠ Getting dependencies..."
	@flutter pub get

commit: format lint run_unit
	@echo "╠ Committing..."
	git add .
	git commit

run_dev_web: ## Runs the web application in dev
	@echo "╠ Running the app"
	@flutter run -d chrome --dart-define=ENVIRONMENT=dev

run_dev_mobile: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@flutter run --flavor dev

build_dev_mobile: clean run_unit
	@echo "╠  Building the app"
	@flutter build apk --flavor dev

l10n: ## builds arb files for translations
	@echo "╠  translating strings in the app"
	@flutter gen-l10n

cloudflare:
	@if [ -d "flutter" ]; then \
		echo "Updating Flutter..."; \
		(export PATH="$${PATH}:`pwd`/flutter/bin" && flutter upgrade); \
	else \
		echo "Cloning Flutter..."; \
		git clone https://github.com/flutter/flutter.git --branch stable; \
		export PATH="$${PATH}:`pwd`/flutter/bin" && flutter doctor; \
	fi && \
	export PATH="$${PATH}:`pwd`/flutter/bin" && \
    flutter doctor && \
    flutter clean && \
    flutter config --enable-web && \
    flutter pub get && \
    flutter build web --dart-define=FLUTTER_WEB_CANVASKIT_URL=canvaskit/ --release --source-maps && \
    echo "CLIENT_ID=$(CLIENT_ID)" > build/web/assets/.env && \
	echo "Environment variable CLIENT_ID: $(CLIENT_ID)"

# Default target
prepare_web:
	# Clean up existing package directory
	@if [ -d "$(PACKAGE_DIR)" ]; then rm -r $(PACKAGE_DIR); fi

	# Ensure the assets directory exists
	mkdir -p $(ASSETS_DIR)

	# Download the olm.zip file
	curl -L $(DOWNLOAD_PATH) -o $(ZIP_FILE)

	# Extract the zip file
	unzip -o $(ZIP_FILE) -d $(ASSETS_DIR)

	# Remove the zip file
	rm -f $(ZIP_FILE)

	# Rename the extracted folder to 'package'
	@if [ -d "$(ASSETS_DIR)/javascript" ]; then mv $(ASSETS_DIR)/javascript $(PACKAGE_DIR); fi
	rm -f $(ASSETS_DIR)/package/olm.wasm
	rm -f $(ASSETS_DIR)/package/olm_legacy.js


build: clean get_packages l10n ## builds all required local items



