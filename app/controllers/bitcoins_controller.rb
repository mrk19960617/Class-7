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

    # Calculate user's Bitcoin value (assuming a fixed amount, e.g., 1 Bitcoin)
    @usd_value = @usd_rate * 1 # Replace '1' with a user's Bitcoin balance if applicable
  end
end
