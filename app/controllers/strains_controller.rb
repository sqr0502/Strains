class StrainsController < ApplicationController

  def index
    # url = "https://www.smokereports.com/api/v1.0/strains/search/day"
    # url = "http://leoqz.me:8443/api/strains"
    # response = HTTParty.get(url)
    # json_data = JSON.parse(response.body)
    # @strains = json_data["data"]
  end

  def show
    puts params[:id]
    url = "http://leoqz.me:8443/api/strains?symptom=" + params[:id]
    response = HTTParty.get(url)
    json_data = JSON.parse(response.body)
    @strain = json_data["data"]
  end

  # def parse_data(json_data
  #   strains = []
  #   # json_data['data'].each do |strain|
  #   # return strain["name"]
  #
  #   end
  # end

end
