cask 'eid-be' do
  version '4.1.19'
  sha256 '152a11b0e393f2eca8d412313a35cb797b9fff575b469f3892534b1011412000'

  url "https://downloads.services.belgium.be/eid/eID-Quickinstaller-#{version}.dmg"
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
