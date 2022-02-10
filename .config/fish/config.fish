set -g theme_color_cheme gruvbox

function run-tests
  python3 ~/utils/checker/run-tests.py $argv
end

source ~/.config/fish/aliases.fish
source ~/.config/fish/utils.fish

# opam configuration
source /home/mhorod/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
source /home/mhorod/.config/fish/gradle.fish

set EDITOR nvim
set VISUAL nvim
