cask 'eid-jp-myna' do
  version :latest
  sha256 :no_check

  url 'https://img.myna.go.jp/tools/mac/MyNASetup.pkg'
  name 'MynaPortal'
  name 'Electronic identity card software for Japan MyNumber'
  name 'eID Japan MyNumber Client'
  homepage 'https://myna.go.jp/'

  depends_on cask:  'eid-jp'
  depends_on macos: '>= :yosemite'

  pkg 'MyNASetup.pkg'

  uninstall pkgutil: 'jp.go.myna',
            delete:  '/private/etc/MyNA'

  caveats do
    depends_on_java '8+'
  end
end
