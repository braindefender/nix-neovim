{
  config = {
    globals = { 
      mapleader = " "; 
    };

    colorschemes.catppuccin = {
      enable = true;
    };

    options = {
      # System
      backup = false;
      undofile = true;
      swapfile = false;
      updatetime = 100;
      clipboard = "unnamedplus";
      termguicolors = true;
      title = true;
      # Indenting
      expandtab = true;
      softtabstop = 2;
      shiftwidth = 2;
      tabstop = 2;
      ignorecase = true;
      smartcase = true;
      smartindent = true;
      # Numbers
      number = true;
      numberwidth = 3;
      relativenumber = true;
      signcolumn = "yes";
      cursorline = true;
      # Behaviour
      splitbelow = true;
      splitright = true;
      scrolloff = 8;
      sidescrolloff = 8;
      wrap = false;
      # Replaced by lualine
      ruler = false;
      showcmd = false;
      showmode = false;
      # laststatus = 3,
    };
  };
}
