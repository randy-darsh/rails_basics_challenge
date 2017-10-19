require 'rails_helper'

describe 'User visits the student index' do
  it 'they see a list of all the students' do
    @student_1 = Student.create(name: "Lady")
    @student_2 = Student.create(name: "Dude")

    visit students_path

    expect(page).to have_content("Lady")
    expect(page).to have_content("Dude")
  end
end