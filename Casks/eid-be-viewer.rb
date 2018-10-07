cask 'eid-be-viewer' do
  version '4.3.4'
  sha256 '61e2e50ffc95aa8560bbb725968dcac4ffceb952ec03e81c33099302f84fe0ec'

  url "https://eid.belgium.be/sites/default/files/software/eid_viewer-#{version}.dmg"
  name 'Electronic identity card software of Belgium (viewer)'
  name 'eID Viewer'
  homepage 'https://eid.belgium.be/'

  app 'eID Viewer.app'
end
