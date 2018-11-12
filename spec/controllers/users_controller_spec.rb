require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "when logged out" do
    context "GET #index" do
      before { get :index }
      it { should respond_with(302) }
    end
  end

  describe "when logged in" do
    let(:user) { create(:user) }
    before { sign_in user }
    context "GET #index" do
      before { get :index }
      it { should respond_with(200) }
    end
    context "GET #show" do
      before { get :show, params: { id: user.id } }
      it { should respond_with(200) }
    end
    context "GET #new" do
      before { get :new }
      it { should respond_with(200) }
    end
    context "GET #edit" do
      before { get :edit, params: { id: user.id } }
      it { should respond_with(200) }
    end
    xcontext "POST #create" do
      it "create valid User" do
        expect {
          post :create, params: { user: attributes_for(:user) }
        }.to change(User, :count).by(1)
      end
    end
  end
end
