require 'rails_helper'

describe "User visits a students show page" do
  it "they see the students name" do
    @student = Student.create(name: "Dude")

    visit student_path(@student)

    expect(page).to have_content("Dude")
  end
end