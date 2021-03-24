require 'rails_helper'

describe 'Books API', type: :request do
  describe 'GET /books' do
    before do
      FactoryBot.create(:book, title: '1984', author: 'George Orwell')
      FactoryBot.create(:book, title: 'Pinokkio', author: 'Carlo Collodie')
    end

    it 'returns all books' do
      get '/api/v1/books'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eql(2)
    end
  end

  describe 'POST /books' do
    it 'creates a new book' do
      expect {
        post '/api/v1/books', params: { book: { title: 'Tom Sower', author: 'Mark Twen' } }
      }.to change { Book.count }.from(0).to(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /books/:id' do
    let!(:book) { FactoryBot.create(:book, title: '1984', author: 'George Orwell') }
    it 'deletes a book' do
      expect {
        delete "/api/v1/books/#{book.id}"
      }.to change { Book.count }.from(1).to(0)

      expect(response).to have_http_status(:no_content)
    end
  end
end
