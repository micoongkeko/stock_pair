require 'rails_helper'

RSpec.describe "ALL USERS and DETAILS", type: :system do

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
    visit root_path
  end
  
  describe  "Route/path" do
    it "should redirect to root_path" do
      expect(page).to have_current_path root_path
    end
  end
  
  describe  "expect contents" do
    it "should have name: NameX" do
        expect(page).to have_content('NameX')
    end
    it "should have balance: 100" do
        expect(page).to have_content('100')
    end
    # it "should have role: #{Role.last.id}" do
    #     expect(page).to have_content(@role.id)
    # end
  end

end
