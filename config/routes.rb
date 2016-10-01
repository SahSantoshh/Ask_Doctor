Rails.application.routes.draw do

  root to: 'blog/problems#index'


  namespace :user do
    resources :problems
  end

  scope module: 'blog' do
    get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact
    get 'problems' => 'problems#index', as: :problems
    get 'problems/:id' => 'problems#show', as: :problem
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
