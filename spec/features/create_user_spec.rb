require 'rails_helper'

RSpec.feature "CreateUsers", type: :system do
  
  before do
    driven_by(:rack_test)
  end

  before :all do
    User.destroy_all
    Role.destroy_all
    @role = Role.create(name: "user")
  end

  it "visits the page with the form to create a user and devise" do
    visit 'users/sign_up'

    fill_in "Name", with: "First"
    fill_in "Email", with: "newuser@gmail.com"
    fill_in "Balance", with: 10000
    fill_in "Role", with: @role.id
    fill_in "Password", with: "newuser123"
    fill_in "Password confirmation", with: "newuser123"

    click_on 'Sign up'

    expect { User.create! }.to change { User.count }.by(1)
  end
end
