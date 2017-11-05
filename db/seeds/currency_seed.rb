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
                          }
                      ])
end