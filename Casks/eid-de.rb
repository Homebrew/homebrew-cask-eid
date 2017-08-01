cask 'eid-de' do
  version '1.10.3'
  sha256 'afd006bab87854640c26f991e7027ae966f30c2acdba2e29bef47dfbe11ce971'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  name 'Electronic identity card software for Germany'
  name 'eID Germany'
  homepage 'https://www.ausweisapp.bund.de/startseite/'

  auto_updates true

  app 'AusweisApp2.app'
end
