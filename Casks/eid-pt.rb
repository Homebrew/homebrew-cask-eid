cask 'eid-pt' do
  version '2.4.0'
  sha256 '977b67f6a7f80af59013cefc9ae8121ddb07957b2793c0e90c9071cd700718bb'

  url 'https://www.autenticacao.gov.pt/documents/10179/11955/Aplica%C3%A7%C3%A3o+de+Cart%C3%A3o+de+Cidad%C3%A3o+MAC+%28v2.4.0%29%20Julho+2017.pkg/50d7af60-1613-4f13-913e-1311f4c269a3'
  name 'Cartão de Cidadão'
  name 'Electronic identity card software for Portugal'
  name 'eID Portugal'
  homepage 'https://www.autenticacao.gov.pt/'

  container type: :pkg

  pkg 'eid-pt.pkg'

  # This is a hack to force the file extension.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('50d7af60-1613-4f13-913e-1311f4c269a3'), staged_path.join('eid-pt.pkg')]
  end

  uninstall pkgutil: 'pt.cartaodecidadao*',
            signal:  [
                       ['TERM', 'com.yourcompany.pteidgui'],
                       ['TERM', 'com.yourcompany.pteiddialogsQTsrv'],
                       ['TERM', 'pt.cartaodecidadao.dss'],
                     ]
end
