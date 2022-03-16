#!/bin/bash

git config --global user.name "Ian Lai"
git config --global user.email "ian@fyianlai.com"

git config --global core.excludesfile ~/.gitignore_global
git config --global rebase.autoStash true true
git config --global remote.origin.prune true

git config --global pull.rebase true

git config --global core.editor "nano"
git config --global alias.tree "log --graph --decorate --pretty=oneline --abbrev-commit"

# https://github.com/dandavison/delta
git config --global core.pager "delta --plus-style=\"syntax #012800\" --minus-style=\"normal #340001\" --syntax-theme=\"Monokai Extended\""
git config --global interactive.diffFilter "delta --color-only"

git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "yellow"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

git config --global commit.gpgsign true
git config --global user.signingkey ian@fyianlai.com
