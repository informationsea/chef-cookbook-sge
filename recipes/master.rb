user node["sge"]["sgeuser"] do
  home "/home/#{username}"
  password nil
  supports :manage_home => true
end

include_recipe "sge::default"

version = node["sge"]["version"]

package "java-1.7.0-openjdk" do
  action :install
end

rpms = ["gridengine-#{version}-1.el6.x86_64.rpm",
        "gridengine-qmaster-#{version}-1.el6.x86_64.rpm",
        "gridengine-execd-#{version}-1.el6.x86_64.rpm",
        "gridengine-qmon-#{version}-1.el6.x86_64.rpm",
        "gridengine-guiinst-#{version}-1.el6.noarch.rpm",
       ]

rpms.each do |rpm|
  remote_file "#{Chef::Config[:file_cache_path]}/#{rpm}" do
    source "#{node['sge']['url']}/#{version}/#{rpm}"
  end
  rpm_package "#{Chef::Config[:file_cache_path]}/#{rpm}" do
    action :install
  end
end

#template "#{Chef::Config[:file_cache_path]}/sgeconf.conf" do
#  owner "root"
#  group "root"
#  mode 644
#end

