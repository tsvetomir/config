# Users should enable Time Machine on remote disks
# defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1

user 'imkoleva' do
    comment "Ivelina Koleva"
    home "/home/imkoleva"
    shell "/bin/nologin"
    password "$6$RwwunGQsfZDLaWeG$FkKTvZ7Zhp/hLiy1CegzmWEEl99AiK1jhw.BaLCcoleoqReewadnNy1.k.WZFDMT5WPFWD7HcELCe1OdtcssC/"
end

directory "/storage-a/timecapsule/imkoleva" do
    owner "imkoleva"
    group "imkoleva"
    mode "0770"
    action :create
end
