cask 'eid-pt' do
  version '2.4.0'
  sha256 '977b67f6a7f80af59013cefc9ae8121ddb07957b2793c0e90c9071cd700718bb'

  url "https://www.autenticacao.gov.pt/documents/10179/11955/Aplica%C3%A7%C3%A3o+de+Cart%C3%A3o+de+Cidad%C3%A3o+MAC+%28v#{version}%29%20Julho+2017.pkg"
  name 'Cartão de Cidadão'
  name 'Electronic identity card software for Portugal'
  name 'eID Portugal'
  homepage 'https://www.autenticacao.gov.pt/'

  pkg "Aplicação+de+Cartão+de+Cidadão+MAC+(v#{version}) Julho+2017.pkg"

  uninstall pkgutil: 'pt.cartaodecidadao*',
            signal:  [
                       ['TERM', 'com.yourcompany.pteidgui'],
                       ['TERM', 'com.yourcompany.pteiddialogsQTsrv'],
                       ['TERM', 'pt.cartaodecidadao.dss'],
                     ]
end
