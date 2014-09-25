remote_file "/usr/ports/distfiles/jre-7u67-linux-i586.tar.gz" do
    source "file:///storage-a/install/jre-7u67-linux-i586.tar.gz"
    action :create
end

execute 'kldload -n linux'

package 'linux-crashplan' do
    source '/ports/sysutils/linux-crashplan'
end

