#!/bin/bash

script_dir=$(dirname "$0")

source  "${script_dir}/git-info.rc"

git_root=$(get-git-root)
hook_name=$(basename "$0")
local_hook="${git_root}/.git/hooks/${hook_name}"

if [[ -e "${local_hook}" ]] ; then
    source  "${local_hook}"
fi
