cask 'eid-ch' do
  version '3.7'
  sha256 'ca075ec64e03a958968f3421c41e71aced205af11a94a147193badf2148643f7'

  url "https://www.postsuisseid.ch/images/setup/suisseid-mac-#{version}.dmg"
  name 'SuisseID'
  name 'Electronic identity card software for Switzerland'
  name 'eID Switzerland'
  homepage 'https://www.postsuisseid.ch/'

  pkg 'Install_SuisseID.pkg'

  uninstall script: {
                      executable: 'uninstall.app/Contents/Resources/Scripts/uninstall.sh',
                      input:      ['y'],
                      sudo:       true,
                    }
end
