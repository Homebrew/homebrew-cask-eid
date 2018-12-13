cask 'eid-pt' do
  version '3.0.13.5530'
  sha256 '01d7c9b8f0e279b2e3e64122374034302ee1a2919f7d01da73958f02fbdde90f'

  url "https://www.autenticacao.gov.pt/documents/10179/11955/Assinatura+Digital+%28MACOS+#{version}%29/9717429b-41c2-404b-ad5b-7c0358ca3bef"
  name 'Cartão de Cidadão'
  name 'Electronic identity card software for Portugal'
  name 'eID Portugal'
  homepage 'https://www.autenticacao.gov.pt/'

  pkg 'Assinatura Digital (MACOS 3.0.13.5530).pkg'

  uninstall pkgutil: 'pt.cartaodecidadao.*',
            script:  {
                       executable: '/usr/local/bin/pteid_uninstall.sh',
                       sudo: true
                     },
            quit:    'pt.gov.autenticacao'
end
