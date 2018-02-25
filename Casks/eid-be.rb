cask 'eid-be' do
  version '4.3.5'
  sha256 'c6fc5a1eecdaee74411aa3edc498e0e0eb7d105d661272a277e985f8dc67d0b1'

  url "https://eid.belgium.be/sites/default/files/software/eid-quickinstaller-#{version}-signed.dmg"
  name 'Electronic identity card software of Belgium'
  name 'eID Belgium Quickinstaller'
  homepage 'http://eid.belgium.be/'

  pkg 'eID-Quickinstaller-signed.pkg'

  uninstall pkgutil: 'be.eid.middleware'

  caveats do
    depends_on_java
  end
end
