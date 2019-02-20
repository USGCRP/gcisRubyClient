require "./lib/gcisRubyClient.rb"
require "test/unit"
require "net/http"

class TestgcisRubyClient < Test::Unit::TestCase

  def test_sample
    assert_equal(4, 2+2)
  end

  def test_client_create
    assert(GcisRubyClient.new('https://data-ktipton.globalchange.gov'), msg = nil)
  end

  def test_client_get
    client = GcisRubyClient.new('https://data-ktipton.globalchange.gov')
    assert_equal(client.get('/report').code, 200)
  end

  def test_api_key
    client = GcisRubyClient.new('https://data-ktipton.globalchange.gov')
    api_response = client.get_api()
    assert_equal(api_response.code, 200)
    refute_equal(api_response.body, '{"error":"not logged in"}')
  end

end

