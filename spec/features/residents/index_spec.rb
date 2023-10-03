require 'rails_helper'

RSpec.describe "residents index page" do
  before :each do
    resident1 = Resident.create!(id: 1, name: "Jessica Fletcher", age: 65, occupation: "Mystery writer")
    resident2 = Resident.create!(id: 2, name: "Dr. Seth Hazlitt", age: 70, occupation: "Town Doctor")
    visit "/residents"
  
  end

  it "should show info for all residents" do
    expect(page).to have_content("Name:Jessica Fletcher")
    expect(page).to have_content("Age:65")
    expect(page).to have_content("Occupation:Mystery writer")
    expect(page).to have_content("Average Age: 67.5")
  end
end