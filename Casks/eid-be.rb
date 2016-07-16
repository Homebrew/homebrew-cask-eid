cask 'eid-be' do
  version '4.1.11'
  sha256 '9f70fe7c4be0676af22d7b4bdaa024e731d9b0485cf022bddffe1271ec0f7500'

  url "https://downloads.services.belgium.be/eid/beidbuild-#{version.delete('.')}.dmg"
  name 'Electronic identity card software of Belgium'
  name 'eID Belgium'
  homepage 'http://eid.belgium.be/'
  license :oss

  pkg 'beidbuild-signed.pkg'

  uninstall pkgutil: 'be.eid.middleware'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
