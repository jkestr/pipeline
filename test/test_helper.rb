ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
  
  def assert_required(object, property)
    assert ! object.valid?
    assert object.errors.on :title
  end
  
  def assert_empty(object)
    assert object.empty?
  end
  
end
