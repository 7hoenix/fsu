class PagesController < ApplicationController
  def home
  end

  def about
  end

  def admin
    @lectures = Lecture.all
  end
end
