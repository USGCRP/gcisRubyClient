require 'rest_client';

class GcisRubyClient
  # create function

  @url
  @username
  @api_key
  @session

  def initialize(gcis_url)
    @url = gcis_url
    @url ||= 'https://data-stage.globalchange.gov'
    @auth_header = ENV['GCIS_AUTH']

    if ! @auth_header
      puts "Set your GCIS_AUTH env variable to your basic auth key"
      return
    end

    response = RestClient.get @url + '/login', {
      :Authorization => @auth_header,
      :Accept => 'application/json'
    }
    @session = response.cookies
    #puts @session
  end

  def get path
    response = RestClient.get @url + path
    #puts response
    #response
  end

  def get_api
    response = RestClient.get(@url + '/login_key.json',
                              {:cookies => @session})
    #puts response
    #response

  end
end
