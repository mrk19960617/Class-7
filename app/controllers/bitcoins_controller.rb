class BitcoinsController < ApplicationController
  def index
    # Fetch Bitcoin data from API
    require "net/http"
    require "json"

    url = "https://blockchain.info/ticker"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    bitcoin_data = JSON.parse(response)

    # Extract current rate
    @usd_rate = bitcoin_data["USD"]["last"]

    # Get user input and convert it to float
    bitcoin_amount = params[:amount].to_f
    bitcoin_amount = 1 if bitcoin_amount.zero? # Default to 1 if input is empty or invalid

    # Calculate user's Bitcoin value
    @usd_value = @usd_rate * bitcoin_amount
  end
end
