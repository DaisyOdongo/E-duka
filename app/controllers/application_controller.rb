class ApplicationController < ActionController::Base

  before_action :current_shop 

  private 

  def current_shop
    Shop.last
  end

  helper_method :current_shop
end
