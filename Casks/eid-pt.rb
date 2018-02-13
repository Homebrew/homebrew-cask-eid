cask 'eid-pt' do
  version '2.4.6'
  sha256 '0f07c26ba9561eca278d8ce20ea6be778be3323602f5c6d4671024910c3aa70c'

  url 'https://www.autenticacao.gov.pt/documents/10179/11955/pteid-mw.pkg'
  name 'Cartão de Cidadão'
  name 'Electronic identity card software for Portugal'
  name 'eID Portugal'
  homepage 'https://www.autenticacao.gov.pt/'

  pkg 'pteid-mw.pkg'

  uninstall pkgutil: 'pt.cartaodecidadao*',
            signal:  [
                       ['TERM', 'com.yourcompany.pteidgui'],
                       ['TERM', 'com.yourcompany.pteiddialogsQTsrv'],
                       ['TERM', 'pt.cartaodecidadao.dss'],
                     ]
end
