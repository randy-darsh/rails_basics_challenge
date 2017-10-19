require 'rails_helper'

describe "When a user visits the new student page" do
  it "they can see the new user form" do
    visit new_student_path

    fill_in "student[name]", with: "Guy"

    click_on "Create Student"

    expect(current_path).to be(student_path(Student.last))

    expect(page).to have_content("Guy")
  end
end
