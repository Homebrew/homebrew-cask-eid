cask 'eid-ch' do
  version :latest
  sha256 :no_check

  url 'https://www.postsuisseid.ch/macinstaller'
  name 'Electronic identity card software for Switzerland (SuisseID)'
  name 'eID Switzerland'
  name 'SuisseID'
  homepage 'https://www.postsuisseid.ch/'

  pkg 'Install_SuisseID.pkg'

  uninstall script: {
                      executable: 'uninstall.app/Contents/Resources/Scripts/uninstall.sh',
                      input:      ['y'],
                      sudo:       true,
                    }
end
