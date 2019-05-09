class HomeController < ApplicationController
  def index
    @sounds = Sound.all
  end
end
