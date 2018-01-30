cask 'eid-be' do
  version '4.3.5'
  sha256 '36969084d8ddc583c8881e30df1ae0d2e04ae289b0ba1d5006c8085a2605008f'

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
