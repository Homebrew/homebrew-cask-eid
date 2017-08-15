cask 'eid-it' do
  version '6.37.05'
  sha256 'a4ce3256f361a4b40b6958be599c69fedb18a42f695f207e86b64810a49746e4'

  url 'http://www.regione.toscana.it/documents/10180/13787134/Software+carta+1+MAC/a58c2031-449c-48cc-8c31-24c5dc2443bc'
  name 'IDProtect Manager'
  name 'IDProtect PINTool'
  name 'Electronic identity card software of Italy'
  name 'eID Italy'
  homepage 'http://www.regione.toscana.it/servizi-online/servizi-sicuri/carta-sanitaria-elettronica'

  installer script: {
                      executable: "#{staged_path}/IDProtectClient-6.37.05.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--unattendedmodeui', 'minimal', '--mode', 'unattended'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "/Applications/IDProtectClient-#{version}/uninstall.app/Contents/MacOS/uninstall",
                      args:       ['osx-intel', '--mode', 'unattended'],
                      sudo:       true,
                    }
end
