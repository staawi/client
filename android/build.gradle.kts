import org.gradle.kotlin.dsl.support.kotlinCompilerOptions

allprojects {
    repositories {
        google()
        mavenCentral()
        maven( "https://storage.googleapis.com/download.flutter.io")
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)


    afterEvaluate {
        if (extensions.findByName("android") != null) {
            val androidExtension = extensions.getByName("android") as com.android.build.gradle.BaseExtension

            if (androidExtension.namespace == null) {
                val manifestFile = androidExtension.sourceSets.getByName("main").manifest.srcFile
                val packageName = javax.xml.parsers.DocumentBuilderFactory.newInstance()
                    .newDocumentBuilder()
                    .parse(manifestFile)
                    .documentElement
                    .getAttribute("package")

                println("Setting $packageName as android namespace")
                androidExtension.namespace = packageName
            }

            androidExtension.apply {
                compileSdkVersion(35)
                ndkVersion = "28.0.13004108"

                defaultConfig {
                    minSdk = 21
                    targetSdk = 35
                }
                compileOptions {
                    sourceCompatibility = JavaVersion.VERSION_11
                    targetCompatibility = JavaVersion.VERSION_17
                }
            }

            tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
                kotlinOptions.jvmTarget = JavaVersion.VERSION_17.toString()
            }
        }
    }
}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
