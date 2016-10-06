cask 'eid-de' do
  version '1.8.0'
  sha256 '54c3e259508355cebb2929822aec7f050981959fe466888de47e7cc9992bf336'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  name 'Electronic identity card software for Germany'
  name 'eID Germany'
  homepage 'https://www.ausweisapp.bund.de/startseite/'

  auto_updates true

  app 'AusweisApp2.app'
end
