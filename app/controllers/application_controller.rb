require "application_responder"

require 'dm-rails/middleware/identity_map'
class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  use Rails::DataMapper::Middleware::IdentityMap
  protect_from_forgery

  def index
  end

end
