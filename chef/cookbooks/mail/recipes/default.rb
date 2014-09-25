service 'sendmail' do
  action :stop
end

cookbook_file "sendmail" do
  path "/etc/rc.conf.d/sendmail"
  action :create
end

package 'opensmtpd'

cookbook_file "smtpd.conf" do
  path "/usr/local/etc/mail/smtpd.conf"
  action :create
end

cookbook_file "smtpd" do
  path "/etc/rc.conf.d/smtpd"
  action :create
end

cookbook_file "aliases" do
  path "/usr/local/etc/mail/aliases"
  action :create
end

template "/usr/local/etc/mail/secrets" do
  source "secrets.erb"
  variables lazy {{
      :gmail_password => `cat /storage-a/install/gmail_pass`
  }}
end

execute '/usr/local/libexec/opensmtpd/makemap /usr/local/etc/mail/aliases'
execute '/usr/local/libexec/opensmtpd/makemap /usr/local/etc/mail/secrets'

execute 'newaliases' do
  cwd '/usr/local/etc/mail'
end

service 'smtpd' do
  action :start
end

