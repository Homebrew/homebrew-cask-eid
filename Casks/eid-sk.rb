cask 'eid-sk' do
  version '1.9.4'
  sha256 '89c3420c7e4f82f8203d2caa91934cddb68f065e0d83f3073db0fdb436f98722'

  # eidas.minv.sk was verified as official when first introduced to the cask
  url 'https://eidas.minv.sk/TCTokenService/download/mac/eIDklient.dmg'
  name 'eID Slovakia'
  name 'eID Klient'
  homepage 'https://www.slovensko.sk/sk/titulna-stranka'

  app 'eIDklient.app'
end
