require 'rails_helper'

RSpec.describe "EDIT USER DETAILS", type: :system do

  before do
    driven_by(:rack_test)
  end

  before :all do
    User.destroy_all
    Role.destroy_all
    @role = Role.create(name: "user")
    @user = User.create( name: "NameX", role_id: @role.id , balance: "100", email: 'test123@example.com', password: 'f4k3p455w0rd' )
  end

  before :each  do
    login_as(@user, :scope => :user)
    visit  "/users/#{@user.id}/edit"
  end
  
  describe  "Route/path" do
    it "should c" do
      expect(page).to have_current_path edit_user_path(@user.id)
    end
  end
  
  describe  "Edit name" do
    it "should update name to edited NameX" do
      fill_in 'Name', with: 'edited NameX'
      click_button 'Save'
      expect(User.last.name).to have_content('edited NameX')
    end
  end

  describe  "Edit balance" do
    it "should update balance to 500" do
      fill_in 'Balance', with: '500'
      click_button 'Save'
      expect(User.last.balance).to have_content('500')
    end
  end

  describe  "redirect on Save" do
    it "should redirect users_path" do
      fill_in 'Name', with: 'edited NameX'
      click_button 'Save'
      expect(page).to have_current_path users_path
    end
  end

end
