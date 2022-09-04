require 'rails_helper'

RSpec.describe 'Trans', type: :request do
  describe 'GET /destroy' do
    it 'returns http success' do
      get '/trans/destroy'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/trans/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/trans/create'
      expect(response).to have_http_status(:success)
    end
  end
end
