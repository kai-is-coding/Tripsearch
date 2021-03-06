class CountriesController < ApplicationController
  def search

  end

  def show
    # search countries by name
    countries = find_country(params[:search_id])

    @country = countries.first
    # searching country names have to match with full country name
    unless @country["name"] == params[:search_id]
      flash[:alert] = 'Country not found'
      render :search
    end

    # @weather = find_weather(@country['capital'], @country['alpha2Code'])
  end

  def create
    # receive data from params
    country = eval(params[:country].to_s)
    # country = JSON.parse(result)
    # save Country in table
    # Country.create :name => :country['name']
    # raise 'hell'
    Country.create :name => country['name']
    # redirect_to "/"


  end

  # def find_weather(city, country_code)
  #   query = URI.encode("#{city},#{country_code}")
  #   request_api(
  #     "https://community-open-weather-map.p.rapidapi.com/forecast?q=#{query}"
  #   )
  # end

  private

  def request_api(url)

    response = Excon.get(
      url,
      headers: {
        'X-RapidAPI-Host' => "restcountries-v1.p.rapidapi.com",
        'X-RapidAPI-Key' => "0bb4caf964msh0117fda678de093p1d4f84jsn5d1cac3f429b"
      }
    )
    return nil if response.status != 200
    JSON.parse(response.body)
  end

  def find_country(name)
    request_api(
      "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(name)}"
    )
  end

  # def country_params
  #
  # end
end
