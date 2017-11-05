currencies = Fx::Currency.all
if currencies.length == 0
  Fx::Currency.create([
                          {
                              label: 'Euros',
                              code: 'EUR',
                              symbol: '€',
                              is_active: true
                          },
                          {
                              label: 'U.S. Dollars',
                              code: 'USD',
                              symbol: '$',
                              is_active: true
                          },
                          {
                              label: 'Pound Stirling',
                              code: 'GBP',
                              symbol: '£',
                              is_active: true
                          },
                          {
                              label: 'Japanese Yen',
                              code: 'JPY',
                              symbol: '¥',
                              is_active: true
                          },
                          {
                              label: 'Bulgarian Lev',
                              code: 'BGN',
                              symbol: 'лв',
                              is_active: true
                          },
                          {
                              label: 'Czech Koruna',
                              code: 'CZK',
                              symbol: 'Kč',
                              is_active: true
                          },
                          {
                              label: 'Danish Krone',
                              code: 'DKK',
                              symbol: 'kr',
                              is_active: true
                          },
                          {
                              label: 'Hungarian Forint',
                              code: 'HUF',
                              symbol: 'Ft',
                              is_active: true
                          },
                          {
                              label: 'Polish Zloty',
                              code: 'PLN',
                              symbol: 'zł',
                              is_active: true
                          },
                          {
                              label: 'Romanian Leu',
                              code: 'RON',
                              symbol: 'RON',
                              is_active: true
                          },
                          {
                              label: 'Swedish Krona',
                              code: 'SEK',
                              symbol: 'kr',
                              is_active: true
                          },
                          {
                              label: 'Swiss Franc',
                              code: 'CHF',
                              symbol: 'CHF',
                              is_active: true
                          },
                          {
                              label: 'Norwegian Krone',
                              code: 'NOK',
                              symbol: 'kr',
                              is_active: true
                          },
                          {
                              label: 'Croatian Kuna',
                              code: 'HRK',
                              symbol: 'kn',
                              is_active: true
                          },
                          {
                              label: 'Russian Ruble',
                              code: 'RUB',
                              symbol: '₽',
                              is_active: true
                          },
                          {
                              label: 'Turkish Lira',
                              code: 'TRY',
                              symbol: '₺',
                              is_active: true
                          },
                          {
                              label: 'Australian Dollar',
                              code: 'AUD',
                              symbol: '$',
                              is_active: true
                          },
                          {
                              label: 'Brazilian Real',
                              code: 'BRL',
                              symbol: 'R$',
                              is_active: true
                          },
                          {
                              label: 'Canadian Dollar',
                              code: 'CAD',
                              symbol: '$',
                              is_active: true
                          },
                          {
                              label: 'Chinese Yuan',
                              code: 'CNY',
                              symbol: '¥',
                              is_active: true
                          },
                          {
                              label: 'Hong Kong Dollar',
                              code: 'HKD',
                              symbol: '$',
                              is_active: true
                          },
                          {
                              label: 'Indonesian Rupiah',
                              code: 'IDR',
                              symbol: 'Rp',
                              is_active: true
                          },
                          {
                              label: 'Israeli New Shekel',
                              code: 'ILS',
                              symbol: '₪',
                              is_active: true
                          },
                          {
                              label: 'Indian Rupee',
                              code: 'INR',
                              symbol: '₹',
                              is_active: true
                          },
                          {
                              label: 'South Korean Won',
                              code: 'KRW',
                              symbol: '₩',
                              is_active: true
                          },
                          {
                              label: 'Mexican Peso',
                              code: 'MXN',
                              symbol: '$',
                              is_active: true
                          },
                          {
                              label: 'Malaysian Ringgit',
                              code: 'MYR',
                              symbol: 'MYR',
                              is_active: true
                          },
                          {
                              label: 'New Zealand Dollar',
                              code: 'NZD',
                              symbol: '$',
                              is_active: true
                          },
                          {
                              label: 'Philippine Peso',
                              code: 'PHP',
                              symbol: 'PHP',
                              is_active: true
                          },
                          {
                              label: 'Singapore Dollar',
                              code: 'SGD',
                              symbol: '$',
                              is_active: true
                          },
                          {
                              label: 'Thai Baht',
                              code: 'THB',
                              symbol: '฿',
                              is_active: true
                          },
                          {
                              label: 'South African Rand',
                              code: 'ZAR',
                              symbol: 'ZAR',
                              is_active: true
                          }
                      ])
end
