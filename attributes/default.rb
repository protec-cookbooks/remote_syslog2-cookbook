# Overwrite this in your cookbook
default['remote_syslog2']['config']['files'] = []
default['remote_syslog2']['config']['exclude_files'] = []
default['remote_syslog2']['config']['exclude_patterns'] = []
default['remote_syslog2']['config']['hostname'] = node['hostname']
default['remote_syslog2']['config']['destination']['host'] = 'logs.papertrailapp.com'
default['remote_syslog2']['config']['destination']['port'] = 1234

# These attributes probably shouldn't be changed unless they specifically need to be
default['remote_syslog2']['config_file'] = '/etc/remote_syslog2.yml'
default['remote_syslog2']['pid_dir'] = '/var/run'
default['remote_syslog2']['install']['download_file'] = 'https://github.com/papertrail/remote_syslog2/releases/download/v0.13/remote_syslog_linux_386.tar.gz'
default['remote_syslog2']['install']['download_path'] = '/tmp/remote_syslog.tar.gz'
default['remote_syslog2']['install']['extract_path'] = '/tmp'
default['remote_syslog2']['install']['extracted_path'] = '/tmp/remote_syslog'
default['remote_syslog2']['install']['extracted_bin'] = 'remote_syslog'
default['remote_syslog2']['install']['bin_path'] = '/usr/local/bin'
default['remote_syslog2']['install']['bin'] = 'remote_syslog2'
