import os
import json
from collections import OrderedDict

l10n_dir = os.path.join(os.path.dirname(__file__), 'assets', 'l10n')

for filename in os.listdir(l10n_dir):
    if filename.endswith('.arb'):
        filepath = os.path.join(l10n_dir, filename)
        print("---------------------------------------------------")
        print(f"Processing {filename}...")
        print("---------------------------------------------------")
        # Read the JSON file

        with open(filepath, 'r', encoding='utf-8') as f:
            data = json.load(f, object_pairs_hook=OrderedDict)
        new_data = OrderedDict()
        keys = list(data.keys())
        i = 0
        while i < len(keys):
            key = keys[i]
            new_data[key] = data[key]
            if not key.startswith('@'):
                at_key = '@' + key
                if at_key in data:
                    at_key_value = data[at_key]
                    if at_key_value != {"type": "String","placeholders": {}} and at_key_value != {}:
                        
                        new_data[at_key] = data[at_key]
                    # If the next key is already the @key, skip it to avoid duplication
                    if i + 1 < len(keys) and keys[i + 1] == at_key:
                        i += 1
            i += 1
        with open(filepath, 'w', encoding='utf-8') as f:
            json.dump(new_data, f, ensure_ascii=False, indent=2)
        print(f"Reordered {filename}: ensured @ keys are directly after their main keys.")
