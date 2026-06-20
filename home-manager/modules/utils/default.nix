{ pkgs, ... } :

{
    imports = [
        ./eza.nix
        ./git.nix
        ./lazygit.nix
    ];
}
