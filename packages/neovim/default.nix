{ lib, callPackage, neovimUtils, wrapNeovimUnstable, neovim-unwrapped, ... }:
let
  vim-config = callPackage ./vim/config.nix { };

  custom-rc = ''
    " custom VIML config
    ${vim-config}
    " custom Lua config
  '';

  neovim-config = neovimUtils.makeNeovimConfig {
    viAlias = true;
    vimAlias = true;
    
    customRC = custom-rc;
  };

  neovim-config-with-wrapper-args = neovim-config // {
    wrapperArgs = (lib.escapeShellArgs neovim-config.wrapperArgs);
  };
  
  wrapped-neovim = wrapNeovimUnstable neovim-unwrapped neovim-config-with-wrapper-args;
in
wrapped-neovim.overrideAttrs (oldAttrs: {
  meta = with lib; {
    description = "Neovim Plus Ultra";
    mainProgram = "nvim";
    platforms = with platforms; linux;
  };
})
