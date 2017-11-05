###
# Class: FxController
#
# Public
#
# @author Carl Anderson
###
class FxController < ApplicationController

  ###
  # Method: home
  #
  # Description: Home
  #
  # @author Carl Anderson
  ###
  def home
    Fx::ExchangeRate.at(DateTime.new,'GBP','USD')

    @currencies = Fx::CurrencyHelper.currencies_lookup
  end

  ###
  # Method: convert
  #
  # Description: Convert currencies
  #
  # @author Carl Anderson
  ###
  def convert
    valid = true
    message = ''
    data = {}

    begin

      date = params[:date]
      if date.blank?
        raise 'Date required'
      end

      source_currency = params[:source]
      if source_currency.blank?
        raise 'Source Currency Required'
      end

      target_currency = params[:target]
      if target_currency.blank?
        raise 'Target Currency Required'
      end

      value = params[:value]
      if value.blank?
        raise 'Please Provide a Value'
      end

      date = date.to_date
      value = value.to_f

      exchange_rate = Fx::ExchangeRate.at(date,source_currency,target_currency)

      if exchange_rate.nil?
        raise "Exchange Rate unavailable for #{source_currency} to #{target_currency} on #{date}"

      end
      value = Fx::ExchangeRate.converted_value(exchange_rate,value)

      value = sprintf('%.6f',value)
      exchange_rate = sprintf('%.6f',exchange_rate)

      data[:exchange_rate] = exchange_rate
      data[:value] = value

    rescue Exception => e
      valid = false
      message = e.message
    end

    response_obj = {
        valid:valid,
        message:message,
        data:data
    }

    render json:response_obj.to_json
  end


end