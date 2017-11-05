unless File.basename($0) == 'rake'
  Fx.setup do |config|

    if Rails.env.production?
      config.fx_cron_string = '1 0 * * *'
      config.fx_data_source = 'http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml'
    else
      config.fx_cron_string = '0,5,10,15,20,25,30,35,40,45,50,55 * * * *'
      config.fx_data_source = 'http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml'
    end

    config.fx_processor = Fx::EcbProcessor
    config.base_currency = 'EUR'

  end
end
