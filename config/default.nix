{
  imports = [
    # Config
    ./auto.nix
    ./ergo.nix
    ./opts.nix
    # Plugins
    # ./plug/harpoon.nix
    ./plug/lualine.nix
    ./plug/telescope.nix
    ./plug/treesitter.nix
  ];

  config.plugins = {
    surround.enable = true;
  };
}
