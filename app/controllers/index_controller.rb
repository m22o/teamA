class IndexController < ApplicationController
  def index
    @t = Time.zone.now
  end
end
