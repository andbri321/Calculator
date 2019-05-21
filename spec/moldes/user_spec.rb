
require 'rails_helper'
RSpec.describe User, type: :model do
  user = User.create(email: 'u2@gmail.com', password: 'password')

  context "User" do
    it 'create' do
      expect(User.all.size).to eq(1)
    end

    it "Exibindo e-mail" do
        expect(user.email).to eql("u2@gmail.com")
    end

    it "Usuario vaálido" do
        user = User.new
        user.email="teste@teste.com"
        user.password="123123"
        expect(user.valid?).to be_truthy
    end

    it "Usuario inválido" do
      user = User.new
      user.email="teste@teste.com"
      expect(user.valid?).to be_falsey
    end
  end
end
