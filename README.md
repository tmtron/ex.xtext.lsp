# Testproject for Xtext LSP support

The repository contains 2 projects:

* `com.tmtron.ex.xtext.lsp.parent`: contains the (Eclipse) xtext-projects, including the language server
* `lsp-use`: a simple (IntelliJ IDEA) project that uses the language and language server

## Building the DSL: 

* just execute `gradlew build` in `com.tmtron.ex.xtext.lsp.parent/`
* the LSP archive will be extracted to this directory: 
`com.tmtron.ex.xtext.lsp.parent/com.tmtron.ex.xtext.lsp.ide/build/lsp/com.tmtron.ex.xtext.lsp.ide-1.0.0-SNAPSHOT/`

## Using the DSL project in IntelliJ Idea:

* Import the `lsp-use` project: File - New - Import existing sources 
* Install the [intellij-lsp plugin](https://github.com/gtache/intellij-lsp)
![Install Plugin](images/InstallIntellijLspPlugin.png)
* After restarting the IDE, configure the plugin
  ![Configure Plugin](images/ConfigureIntellijLspPlugin.png)
1. Go to `File` - `Settings` - `Server Definitions`
2. set the type to `Executable`
3. set the extension to `exdsl`
4. set the path to the start-script: e.g. `xxx/text-lsp/com.tmtron.ex.xtext.lsp.parent/com.tmtron.ex.xtext.lsp.ide/build/lsp/com.tmtron.ex.xtext.lsp.ide-1.0.0-SNAPSHOT/bin/com.tmtron.ex.xtext.lsp.ide.bat`
* when you now open the model file, the language server will be started automatically:
![Plugin ErrorMsg](images/LspEditor_Error.png)
1. Open the model file
2. The green dot in the status-bar belongs to the `intellij-lsp plugin` (you can click it to open a pop-up menu)
3. Note, that the `MyCustomType` class is not recognized by the language server
4. The `MyCustomType` class is defined in the `lsp-use` project

Note, that the error is just shown in the editor. The DSL generation works fine.


Links:

* Xtext forum discussion: [LSP: resolving types](https://www.eclipse.org/forums/index.php/m/1780255/#msg_1780255)
* xtext-core issue #159: [LanguageServer Provide basic java project concept](https://github.com/eclipse/xtext-core/issues/159)
* xtext-core issue #589:[LSP getImplicitImports isn't working as expected](https://github.com/eclipse/xtext-core/issues/589)
