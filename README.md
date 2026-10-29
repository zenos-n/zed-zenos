# ZenOS DSL for Zed

Supports `.zcfg`, `.zmdl`, `.zpkg`, and `.zstr`: highlighting, comments, bracket matching, indentation and symbol outline. Uses the sibling `tree-sitter-zenos` grammar repository. Includes the `format` external formatter launcher, using the sibling ZenPkgs compiler. Configure Zed’s ZenOS language formatter to invoke this script with `{buffer_path}`. Formatting preserves tokens, comments and the parsed document; invalid input is rejected. Semantic diagnostics and completion need a future language server.

Build with `WASI_SDK_PATH=/path/to/wasi-sdk ./build.sh`. Then choose **Install Dev Extension** in Zed and select this directory. Alternatively symlink the built directory into Zed's `extensions/installed/zenos`; Zed watches this directory and reloads it automatically.

The grammar is pinned to a local Git URL for development. Before publishing to the Zed registry, publish both repositories and change the grammar URL to its public repository URL while retaining the exact revision.
