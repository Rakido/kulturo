class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


# host to generate the absolute url needed to load your images from the external world (Facebook, Twitter, ...).
  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

end
