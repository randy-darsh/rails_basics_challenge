require 'rails_helper'

describe "User visits an edit student page" do
  it "they can edit a student" do
    @student = Student.create(name: "Person")

    visit edit_student_path(@student)

    fill_in "student[name]", with: "Not Person"

    click_on "Update Student"

    expect(current_path).to eq(student_path(@student))
    expect(page).to have_content("Not Person")
  end
end
