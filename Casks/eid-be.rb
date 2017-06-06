cask 'eid-be' do
  version '4.2.7'
  sha256 '488ebe5be3910d8f385c5be65314e6aa634a8b765b65e7670fd2c1b1b51486c1'

  url "https://eid.belgium.be/sites/default/files/software/eid-quickinstaller_#{version}.dmg"
  name 'Electronic identity card software of Belgium'
  name 'eID Belgium Quickinstaller'
  homepage 'http://eid.belgium.be/'

  pkg 'eID-Quickinstaller-signed.pkg'

  uninstall pkgutil: [
                       'be.eid.middleware',
                       'be.eid.viewer.app',
                     ]

  caveats do
    depends_on_java
  end
end
