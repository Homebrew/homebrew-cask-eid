cask 'eid-pt' do
  version :latest
  sha256 :no_check

  url 'https://www.cartaodecidadao.pt/ccsoftware/Cartao_de_Cidadao.pkg'
  name 'Cartão de Cidadão'
  name 'Electronic identity card software for Portugal'
  name 'eID Portugal'
  homepage 'https://www.cartaodecidadao.pt/'

  pkg 'Cartao_de_Cidadao.pkg'

  uninstall script: '/usr/local/bin/pteid_uninstall.sh'
end
