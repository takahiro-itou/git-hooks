#!/bin/bash

script_dir=$(dirname "$0")
hooks_root_dir="${script_dir}/.."

echo  "$0"
source  "${hooks_root_dir}/utils/git-info.rc"

git_root=$(get-git-root)
hook_name=$(basename "$0")
local_hook="${git_root}/.git/hooks/${hook_name}"

if [[ -e "${local_hook}" ]] ; then
    source  "${local_hook}"
fi
