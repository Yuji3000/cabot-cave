require "rails_helper"

RSpec.describe Resident, type: :model do

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
    it {should validate_presence_of :occupation}
  end

  describe "relationships" do
    it {should have_many :resident_courses}
    it {should have_many(:courses).through(:resident_courses)}
  end

  describe "alph_order" do
    it 'should return residents in alphabetical order' do
      resident1 = Resident.create!(name: "a", age: 65, occupation: "Mystery writer")
      resident2 = Resident.create!(name: "b", age: 70, occupation: "Town Doctor")
      resident3 = Resident.create!(name: "c", age: 65, occupation: "Mystery writer")
      resident4 = Resident.create!(name: "d", age: 70, occupation: "Town Doctor")

      expect(Resident.alph_order).to eq([resident1, resident2, resident3, resident4])
    end
  end

end
