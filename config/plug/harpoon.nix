{ pkgs, ... }: {
  config = {
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    package = pkgs.vimPlugins.harpoon2;
  };

  keymaps = [
    { mode = "n"; key = "<M-e>"; lua = true; action = "harpoon.ui:toggle_quick_menu(harpoon:list())"; }
    { mode = "n"; key = "<leader>a"; lua = true; action = "harpoon:list():append()"; }

    { mode = "n"; key = "<M-j>"; lua = true; action = "harpoon:list():select(1)"; }
    { mode = "n"; key = "<M-k>"; lua = true; action = "harpoon:list():select(2)"; }
    { mode = "n"; key = "<M-l>"; lua = true; action = "harpoon:list():select(3)"; }
    { mode = "n"; key = "<M-~>"; lua = true; action = "harpoon:list():select(4)"; }
  ];
    };
}
