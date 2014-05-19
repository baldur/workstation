#
# Cookbook Name:: intellij
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file "/etc/profile.d/git.sh" do
  content "export GIT_EDITOR=vim"
  mode 00755
end
