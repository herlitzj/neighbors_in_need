require 'test_helper'

class RequestTest < ActiveSupport::TestCase

	def setup
    @request = Request.new(title: "Example Request", description: "user@example.com",
    												amount: 12.34, location: "Anytown, Usa")
  end
  
	test "title should be present" do
    @request.title = nil
    assert_not @request.valid?
  end

  test "description should be present" do
    @request.description = nil
    assert_not @request.valid?
  end

  test "amount should be present" do
    @request.amount = nil
    assert_not @request.valid?
  end

  test "location should be present" do
    @request.location = nil
    assert_not @request.valid?
  end

  test "amount can be a number or a string including $ and ," do
    @request.amount = "$1,234.56"
    assert @request.amount == 1234.56
  end

end
