class WelcomeController < ApplicationController
  def index
	  @time = Time.zone.now
  end
end
