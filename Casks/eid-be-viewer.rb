cask 'eid-be-viewer' do
  version '4.2.7'
  sha256 'e9d7ff7028d36fa1a162fec56a8dc2711f03f20b11c5bd5e991b6f79a38bce3d'

  url "https://eid.belgium.be/sites/default/files/software/eid_viewer-#{version}-signed.dmg"
  name 'Electronic identity card software of Belgium (viewer)'
  name 'eID Viewer'
  homepage 'http://eid.belgium.be/'

  app 'eID Viewer.app'
end
