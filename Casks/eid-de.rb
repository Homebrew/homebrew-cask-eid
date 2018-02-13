cask 'eid-de' do
  version '1.14.0'
  sha256 '390bc8e11cde49bcd2377db148e3c2c2c9713501601a563b8d3b4fa511795aeb'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  name 'Electronic identity card software for Germany'
  name 'eID Germany'
  homepage 'https://www.ausweisapp.bund.de/startseite/'

  auto_updates true

  app 'AusweisApp2.app'
end
