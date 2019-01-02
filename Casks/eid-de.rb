cask 'eid-de' do
  version '1.16.1'
  sha256 '4978fd6cc7c8b7de5faa6b65596b134ac791082e7f2b1982fe40ab0ba8ee4b9a'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  name 'Electronic identity card software for Germany'
  name 'eID Germany'
  homepage 'https://www.ausweisapp.bund.de/startseite/'

  auto_updates true

  app 'AusweisApp2.app'
end
