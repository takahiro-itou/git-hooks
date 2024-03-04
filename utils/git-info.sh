
function get_git_root {
    git rev-parse --show-superproject-working-tree --show-toplevel | head -n 1
}
