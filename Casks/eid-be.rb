cask 'eid-be' do
  version '4.3.8'
  sha256 'c3472ccb016eecfe93b7cb3cd4a05af7172d7b1259f21cd8db8ef0b650e38942'

  url "https://eid.belgium.be/sites/default/files/software/eid-quickinstaller-#{version}.dmg"
  name 'Electronic identity card software of Belgium'
  name 'eID Belgium Quickinstaller'
  homepage 'http://eid.belgium.be/'

  pkg 'eID-Quickinstaller-signed.pkg'

  uninstall pkgutil: 'be.eid.middleware'

  caveats do
    depends_on_java
  end
end
