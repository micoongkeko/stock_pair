require 'rails_helper'

RSpec.feature "CreateUsers", type: :system do
  
  before do
    driven_by(:rack_test)
  end

  before :all do
    User.destroy_all
  end

  it "visits the page with the form to create a user and devise" do
    visit 'users/sign_up'

    fill_in "user_name", with: "First"
    fill_in "user_email", with: "newuser@gmail.com"
    fill_in "user_balance", with: 10000
    fill_in "user_role_id", with: 2
    fill_in "user_password", with: "newuser123"
    fill_in "user_password_confirmation", with: "newuser123"

    click_on 'Sign up'

    expect {User.create!}.to change {User.count}.by(1)
  end
end
