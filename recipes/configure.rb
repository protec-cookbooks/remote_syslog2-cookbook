template node['remote_syslog2']['config_file'] do
    source 'remote_syslog2.yml.erb'
    owner 'root'
    group 'root'
    mode 00644
    variables(
      :files => node['remote_syslog2']['config']['files']
    )
    action :create
    notifies :restart, "service[remote_syslog2]", :delayed
end

