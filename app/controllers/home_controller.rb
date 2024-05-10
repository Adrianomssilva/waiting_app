class HomeController < ApplicationController

  def index
    @rows = Row.all
  end
end
