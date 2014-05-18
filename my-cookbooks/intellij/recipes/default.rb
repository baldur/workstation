#
# Cookbook Name:: intellij
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


directory node[:intellij][:install_dir] do
  user node[:user]
  group node[:user]
  recursive true
end


remote_file "#{node[:intellij][:install_dir]}/ideaIC-#{node[:intellij][:version]}.tar.gz" do
  source "http://download.jetbrains.com/idea/ideaIC-#{node[:intellij][:version]}.tar.gz"
  user node[:user]
  group node[:user]
  not_if {
    File.exists?("#{node[:intellij][:install_dir]}/ideaIC-#{node[:intellij][:version]}.tar.gz")
  }
end

Execute "unpack intellij" do
  cwd "#{node[:intellij][:install_dir]}"
  command "tar xvvf ideaIC-#{node[:intellij][:version]}.tar.gz -C ./ --strip-components 1"
  user node[:user]
end
