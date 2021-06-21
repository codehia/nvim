lua << EOF
require'lspconfig'.pyright.setup{}

  Commands:
  - PyrightOrganizeImports: Organize Imports
  
  Default Values:
    cmd = { "pyright-langserver", "--stdio" }
    filetypes = { "python" }
    root_dir = function(filename)
          return util.root_pattern(unpack(root_files))(filename) or
                 util.path.dirname(filename)
        end;
    settings = {
      python = {
        venvPath = "/home/codehia/.virtual_envs/pynvim"
        pythonPath = "/home/codehia/.virtual_envs/pynvim/bin/python"
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true,
          autoImportCompletions =  true
        }
      }
    }
EOF
