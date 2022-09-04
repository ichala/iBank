require 'rails_helper'

RSpec.describe "Groups", type: :request do
  describe "GET /destroy" do
    it "returns http success" do
      get "/groups/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/groups/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/groups/create"
      expect(response).to have_http_status(:success)
    end
  end

end
