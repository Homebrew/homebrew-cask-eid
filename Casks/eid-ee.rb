cask 'eid-ee' do
  version '18.12.0.1815'
  sha256 '3247750cf358833fa56db51b8f161a5d442a2b3d23c503b62c3de04238c0ac3e'

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name 'Electronic identity card software for Estonia'
  name 'eID Estonia'
  homepage 'https://installer.id.ee/?lang=eng'

  pkg 'Open-EID.pkg'

  uninstall script: {
                      executable: 'uninstall.sh',
                      input:      ['y'],
                      sudo:       true,
                    },
            quit:   'ee.ria.TokenSigningApp'

  caveats <<~EOS
    DigiDoc4 Client and ID-card Utility are available in the App Store:
      https://appstore.com/mac/ria
  
    You can also install with Mac App Store command-line interface (https://formulae.brew.sh/formula/mas):
      $ mas install 1370791134 # qdigidoc4
      $ mas install 556524918 # qesteidutil
  EOS
end
