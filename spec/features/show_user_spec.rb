require 'rails_helper'

RSpec.feature "Users#show", type: :system do

  before do
    driven_by(:rack_test)
  end

  before :all do
    User.destroy_all
    Role.destroy_all
    @role = Role.create(name: "user")
    @user = User.create( name: "NameX", role_id: @role.id , balance: "100", email: 'test123@example.com', password: 'f4k3p455w0rd' )

  end

  before :each do
    login_as(@user)
    visit user_path(@user)
  end

  it "displays user's name" do
    expect(page).to have_content("NameX")
  end

  it "displays user's balance" do
    expect(page).to have_content("100")
  end

  it "displays user's role ID" do
    expect(page).to have_content(@user.role_id)
  end

end
