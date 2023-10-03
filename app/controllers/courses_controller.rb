class CoursesController < ApplicationController
  def index
    @courses = Course.order(:name)
    # require 'pry'; binding.pry
  end
end