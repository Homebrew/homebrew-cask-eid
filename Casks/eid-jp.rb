cask 'eid-jp' do
  version '03-02'
  sha256 '7ba32c8fa09aa818d9214fd163382c2f6121b60078b2d10283463c6fcfc2b368'

  url "https://www.jpki.go.jp/client/download/101/JPKI#{version}.dmg"
  name 'jpki'
  name 'Electronic identity card software for Japan'
  name 'eID Japan'
  homepage 'https://www.jpki.go.jp/'

  depends_on macos: '>= :yosemite'

  pkg 'JPKIInstall.pkg'

  uninstall pkgutil: 'jp.go.jpki',
            script:  {
                       executable: 'JPKIUninstall.command',
                       input:      ['Y'],
                       sudo:       true,
                     }

  caveats do
    depends_on_java('8+')
  end
end
