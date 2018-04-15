cask 'eid-de' do
  version '1.14.1'
  sha256 'dae92e4525342fbf548dda9599a58b95a05cf7f8d248435fc1c02a0811ac61c7'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  name 'Electronic identity card software for Germany'
  name 'eID Germany'
  homepage 'https://www.ausweisapp.bund.de/startseite/'

  auto_updates true

  app 'AusweisApp2.app'
end
