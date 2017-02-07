cask 'eid-de' do
  version '1.10.1'
  sha256 'fa4ea0686df725a9c770e3fe054bee4b117f2a0376e477d0752a01f0d2273bca'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  name 'Electronic identity card software for Germany'
  name 'eID Germany'
  homepage 'https://www.ausweisapp.bund.de/startseite/'

  auto_updates true

  app 'AusweisApp2.app'
end
