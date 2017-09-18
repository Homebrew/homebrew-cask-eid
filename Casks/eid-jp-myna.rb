cask 'eid-jp-myna' do
  version '1.0.2'
  sha256 '07ca31d96628fb7bdae923aba205cc6d7197529d46f1265ff13a31483d609340'

  url 'https://img.myna.go.jp/tools/mac/MyNASetup.pkg'
  name 'MynaPortal'
  name 'Electronic identity card software for Japan MyNumber'
  name 'eID Japan MyNumber Client'
  homepage 'https://myna.go.jp/'

  depends_on cask:  'eid-jp',
             macos: '>= :mavericks'

  pkg 'MyNASetup.pkg'

  uninstall pkgutil: 'jp.go.myna',
            delete:  '/private/etc/MyNA'

  caveats do
    depends_on_java('8+')
  end
end
