{
  config = {
    autoCmd = [
      # Change numbers to absolute in Insert Mode
      {
        event = [ "InsertEnter" ];
        pattern = [ "*" ];
        callback = { 
          __raw = ''
            function()
              vim.cmd "set norelativenumber"
            end
          '';
        };
      }
      # Change numbers to relative in Normal Mode
      {
        event = [ "InsertLeave" ];
        pattern = [ "*" ];
        callback = { 
          __raw = ''
            function()
              vim.cmd "set relativenumber"
            end
          '';
        };
      }
      # Highlight on Yank
      {
        event = [ "TextYankPost" ];
        callback = {
          __raw = ''
            function()
              vim.highlight.on_yank({ higroup = "Visual", timeout = 100 })
            end
          '';
        };
      }
      # Exit on Q in some overlays
      {
        event = [ "FileType" ];
        pattern = [ "netrw" "help" "man" ];
        callback = {
          __raw = ''
            function()
              vim.cmd([[
                nnoremap <silent> <buffer> q :close<CR>
                set nobuflisted
              ]])
            end
          '';
        };
      }
    ];
  };
}
