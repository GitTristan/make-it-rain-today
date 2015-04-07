class WelcomeController < ApplicationController

  def index
    @gif = Gif.first
  end
end
