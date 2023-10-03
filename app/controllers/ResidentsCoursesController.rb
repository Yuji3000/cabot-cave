class ResidentsCoursesController < ApplicationController
  def index
    @resident = Resident.find(params[:id])
  end
end