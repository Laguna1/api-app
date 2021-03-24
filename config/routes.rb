Rails.application.routes.draw do
  # get 'books/index'
  # get '/books' => 'books#index'
  namespace :api do
    namespace :v1 do
      resources :books, only: %i[index create destroy]
    end
  end
end
