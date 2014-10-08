package 'plexmediaserver'

cookbook_file 'plexmediaserver' do
  path '/etc/rc.conf.d/plexmediaserver'
  action :create
end

directory '/usr/local/plexdata/Plex Media Server/Logs' do
    owner 'root'
    group 'wheel'
end

link '/usr/local/plexdata/Plex Media Server/Logs/Plex Media Server.log' do
    owner 'root'
    group 'wheel'
    to '/dev/null'
end

service 'plexmediaserver' do
    action :start
    supports :status => true
end

group 'plex' do
    action :modify
    members ['plex', 'tsonev', 'imkoleva']
    append true
end
