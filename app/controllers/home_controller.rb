class HomeController < ApplicationController
  def index
    @pic_bg = Pic.last.image
  end

  def about
  end

  def contact
  end

  def faq
  end
end
