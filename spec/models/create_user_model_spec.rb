require 'rails_helper'

RSpec.describe "Create User Model", type: :model do

  before :all do
    User.destroy_all
    Role.destroy_all
    @role = Role.create(name: "user")
  end
  context 'if fields all have value' do
    let(:create_user) { User.create!(name: 'Name', email: 'email@email.com', balance: 1000, role_id: @role.id, password: 'admin123', password_confirmation: 'admin123')}

    it 'should be valid' do
      expect { create_user }.to change { User.count }.by(1)
    end
  end

end
