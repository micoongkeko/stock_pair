require 'rails_helper'

RSpec.describe "Edit user details", type: :feature do

  User.destroy_all
  
  before :each do
    @user = User.create( name: "NameX", role_id: "3", balance: "100", email: 'test123@example.com', password: 'f4k3p455w0rd' )

    login_as(@user, :scope => :user)



  end

  before(:each) do
    @user = assign(:user, User.create!( name: "NameX", balance: "100", email: 'test123@example.com', password: 'f4k3p455w0rd', role_id: '4' ))
  end

  
  describe  "When edit name to 'edited NameX' " do

    it "should have content edited NameX" do
      # visit "users/#{User.last.id}/edit "
      expect(page).to have_current_path  "/users/#{User.last.id}/edit" 

      # fill_in 'xxxx', with: 'value'
      click_button 'Save'
      # expect(user.save).to be_false
    end

  #   it "should not save" do
  #       expect(user.save).to be_false
  #   end
  # end

  # context "when middle name is empty" do
  #   it "should not be valid" do
  #       expect(user.valid?).to be_false
  #   end

  #   it "should not save" do
  #       expect(user.save).to be_false
  #   end
  # end

  # context "when last name is empty" do
  #   it "should not be valid" do
  #       expect(user.valid?).to be_false
  #   end

  #   it "should not save" do
  #       expect(user.save).to be_false
  #   end
  # end

  # context "when balacne is empty" do
  #   it "should not be valid" do
  #       expect(user.valid?).to be_false
  #   end

  #   it "should not save" do
  #       expect(user.save).to be_false
  #   end
  # end

  # context "when first, middle, last and balance is valid" do
  #   it "should not be valid" do
  #       expect(user.valid?).to be_false
  #   end

  #   it "should not save" do
  #       expect(user.save).to be_false
  #   end
  end

end
