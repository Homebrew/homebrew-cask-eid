cask 'eid-be' do
  version '4.1.5'
  sha256 '1ac58ad4ef9668f0634f7648df79aed41b47789059fa5af29c0e7617b1545f2c'

  url "https://downloads.services.belgium.be/eid/beidbuild-#{version.delete('.')}.dmg"
  name 'Electronic identity card software of Belgium'
  name 'eID Belgium'
  homepage 'http://eid.belgium.be/'

  pkg 'beidbuild-signed.pkg'

  uninstall pkgutil: 'be.eid.middleware'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
