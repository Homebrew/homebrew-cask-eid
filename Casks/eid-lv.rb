cask 'eid-lv' do
  version '1.4.6'
  sha256 'd36e245899c042ec4717bd8c89a74679770b06b6cd7ba0b680d5f0afd3707fde'

  url "https://download.eparaksts.lv/download/85495/d36e245899c042ec4717bd8c89a74679770b06b6cd7ba0b680d5f0afd3707fde/eparakstitajs3-distribution-#{version}.pkg"
  name 'eParakstītājs'
  name 'Electronic identity card software for Latvia'
  name 'eID Latvia'
  homepage 'https://www.eparaksts.lv/'

  pkg "eparakstitajs3-distribution-#{version}.pkg"

  uninstall pkgutil: [
                       'com.gemalto.classicclient.pkg',
                       'lv.eparaksts.service.pkg',
                       'lv.eparaksts.tokensigning.pkg',
                       'lv.euso.signanywhere.pkg',
                       'org.latvia-eid.mac',
                     ]
end
