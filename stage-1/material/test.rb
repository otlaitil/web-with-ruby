require 'minitest/autorun'
require 'rack/test'

require_relative 'app.rb'

class TestIntegration < Minitest::Test
  include Rack::Test::Methods

  def app
    WebApp.new
  end

  def test_landing_page
    # your test code here
    # with minitest assertions
    # see e.g. https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest
    #
    # example assertion:
    assert_equal(1, 1)
  end
end
