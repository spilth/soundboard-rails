class HomeController < ApplicationController
  def index
    @sounds = Sound.all.order(:title)
  end
end
