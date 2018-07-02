Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end
  # #7
  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'
  get "/welcome/faq" => "welcome#faq"
  root to: 'welcome#index'
end
