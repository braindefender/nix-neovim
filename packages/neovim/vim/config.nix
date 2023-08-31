{lib, substituteAll, ...}: 

with lib;
let
mkVimConfig = file: args:
  let module =
    substituteAll (args // {
      src = file;
    });
  in
  "source ${module}";

mkVimConfigs = files:
  lib.concatMapStringsSep "\n"
    (file:
      if builtins.isAttrs file then
        mkVimConfig file.file file.options
      else
        mkVimConfig file { }
    )
    files;
in
mkVimConfigs [ ./init.vim ]
