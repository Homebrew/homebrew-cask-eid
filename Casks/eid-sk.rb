cask 'eid-sk' do
  version :latest
  sha256 :no_check

  # eidas.minv.sk/TCTokenService/download was verified as official when first introduced to the cask
  url 'https://eidas.minv.sk/TCTokenService/download/mac/eIDklient.dmg'
  name 'eID Klient'
  name 'Electronic identity card software for Slovakia'
  name 'eID Slovakia'
  homepage 'https://www.slovensko.sk/sk/titulna-stranka'

  app 'eIDklient.app'
end
