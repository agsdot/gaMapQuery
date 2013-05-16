require "spec_helper"

describe LocationsController do
  include Devise::TestHelpers

    before do
      @user = User.create!(
        :email => 'es@g.com',
        :password => 'hilonodoso',
        :password_confirmation => 'hilonodoso',
        )
    end
    after do
      @user.destroy
    end

  describe "home" do
    it "responds successfully with an HTTP 200 success" do
      get :home
      expect(response).to be_success
      expect(response.status).to eq 200
    end
  end

  describe "send_email" do
    it "responds successfully with an HTTP 200 success" do
      get :send_email, {search: '91801', to: '90025'}
      expect(response).to be_success
      expect(response.status).to eq 200
    end
  end

  describe "locations index page" do
    it "is a success if a confirmed user signs in" do
      # @user.confirm!
      sign_in @user
      get :index
      expect(response).to be_success
      expect(response.status).to eq 200
    end

    it "index with search parameter" do
      # @user.confirm!
      sign_in @user
      get :index, {search: '91801'}
      expect(response).to be_success
      expect(response.status).to eq 200
    end

  end

  describe "locations show page" do
    it "is a success if a confirmed user can see a specific show view" do
      # @user.confirm!
      sign_in @user
      get :show, {id: '2'}
      expect(response).to be_success
      expect(response.status).to eq 200
    end
  end

  describe "new page action" do
    it "is a success if a confirmed user can do a new page page action" do
      sign_in @user
    @location = Location.new

      expect(response).to be_success
      expect(response.status).to eq 200
    end
  end

  describe "locations edit page" do
    it "is a success if a confirmed user can see a specific edit view" do
      # @user.confirm!
      sign_in @user
      get :edit, {id: '2'}
      expect(response).to be_success
      expect(response.status).to eq 200
    end
  end

# location[address]:414 Brannan Street San Francisco 94107
# location[latitude]:37.779931
# location[longitude]:-122.394868

=begin
  describe "update action" do
    it "is a success if a user can update a page" do
      sign_in @user

      @l = Location.create!(address: '414 Brannan')
      get :update, {id: @l.id, location: {address: 'New Address'}}
      # expect(response).to be_success
      @updated_l = Location.find(@l.id)
      expect(response.status).to eq 302
      expect(@updated_l.address).to eq 'New Address'
    end

    it "is not passed an invalid location" do
      @a = Location.create!(address: 'new address')
      get :update, {id: @a.id }#, location: {address: ''}}
      # expect(response).to be_success
      # @updated_l = Location.find(@l.id)
      expect(response).to render("edit")
  # response.should render_template("success")
    end

  end
=end

  describe "locations destroy" do
    it "is a success if a confirmed user can do a destroy " do
      # @user.confirm!
      sign_in @user
      @l = Location.create!(address: 'new address')
      get :destroy, {id: @l.id}
      # ll = Location.find(@l.id) # <-- should fail
      # expect(response).to be_success
      expect(Location.where(id: @l.id).count).to eq 0
      # expect(response.status).to eq 200
    end
  end












end
