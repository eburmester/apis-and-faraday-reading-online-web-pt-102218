class SearchesController < ApplicationController
  def search
  end

  def foursquare
  end
  
  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'I2LR2REDS3KSMVEYA0WZEMCXF0BG4XZHWSLA155SBBYPEYDZ'
      req.params['client_secret'] = '4D5YE4LPXCYUYASGDF0V1O33GRRC1VWVBUAIRAXTX3BG1BXY'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
  
end
