require "rails_helper"

RSpec.describe "resident Courses page" do
  before :each do
    resident1 = Resident.create!(id: 1, name: "Jessica Fletcher", age: 65, occupation: "Mystery writer")
    resident2 = Resident.create!(id: 2, name: "Dr. Seth Hazlitt", age: 70, occupation: "Town Doctor")
    
    course1 = Course.create!(id: 1, name: "Crime Scenes 101")
    course2 = Course.create!(id: 3, name: "Fingerprinting")

    resident_course1 = ResidentCourse.create!(resident_id: resident1.id, course_id: course1.id)
    resident_course1 = ResidentCourse.create!(resident_id: resident1.id, course_id: course2.id)

    visit "residents/1"

  end

  it "will show all the courses that jessica is taking" do
    expect(page).to have_content("Jessica Fletcher")
    expect(page).to have_content("Courses:")
    expect(page).to have_content("- Crime Scenes 101")
    expect(page).to have_content("- Fingerprinting")
    expect(page).to_not have_content("Dr. Seth Hazlitt")
  end
end