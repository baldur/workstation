#
# Cookbook Name:: intellij
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file "/etc/profile.d/path.sh" do
  content "export PATH=/home/baldur/apps/genymotion:$PATH"
  mode 00755
end

file "/etc/profile.d/git.sh" do
  content "export GIT_EDITOR=vim"
  mode 00755
end

file "/etc/profile.d/aliases.sh" do
  content <<-DOC
alias gcb="git checkout -b"
DOC

  mode 00755
end

