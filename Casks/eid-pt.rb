cask 'eid-pt' do
  version '1.61.0'
  sha256 '050bb6d4ec5a6396688e93b6e73fa8953c6e51ceef196258af9636a6ca776982'

  url "https://www.autenticacao.gov.pt/documents/10179/11955/Aplica%C3%A7%C3%A3o+de+Cart%C3%A3o+de+Cidad%C3%A3o+%28MAC+-+OSX+Sierra%29%20%28v#{version}%29/d6b5592f-106b-4aa0-816d-8f07eba8d2c2"
  name 'Cartão de Cidadão'
  name 'Electronic identity card software for Portugal'
  name 'eID Portugal'
  homepage 'https://www.autenticacao.gov.pt/'

  pkg 'Cartao_de_Cidadao.pkg'

  uninstall script: '/usr/local/bin/pteid_uninstall.sh'
end
