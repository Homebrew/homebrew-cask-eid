cask 'eid-de' do
  version '1.14.3'
  sha256 '60db864a025a2e3e84efb83079662fad48548e96194790ca4f9daff2701abf22'

  url "https://www.ausweisapp.bund.de/uploads/tx_ausweisdownloads/AusweisApp2-#{version}.dmg"
  name 'AusweisApp2'
  name 'Electronic identity card software for Germany'
  name 'eID Germany'
  homepage 'https://www.ausweisapp.bund.de/startseite/'

  auto_updates true

  app 'AusweisApp2.app'
end
