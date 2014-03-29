#
# Cookbook Name:: sgebuild
# Recipe:: default
#
# Copyright 2014, OKAMURA Yasunobu
#
# GPL v3 or later
#

%w{hwloc man tcsh tcl perl-XML-Simple openmotif libXt xorg-x11-xauth xorg-x11-server-Xorg xorg-x11-fonts-ISO8859-1-100dpi xorg-x11-fonts-ISO8859-1-75dpi}.each do |pkg|
  package pkg do
    action :install
  end
end

template "/etc/services" do
  owner "root"
  group "root"
  mode 0644
end

%w(/etc/profile.d/gridengine.sh /etc/profile.d/gridengine.csh).each do |file|
  template file do
    owner "root"
    group "root"
    mode 0644
  end
end
