class ResidentsController < ApplicationController
  def index
    @residents = Resident.order(:name)
    
    @average_age = Resident.average(:age).to_f
  end

end