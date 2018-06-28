Rails.application.routes.draw do
  resources :topics do
    resources :sponsored do
  # #34
      resources :posts, except: [:index]
    end
 get 'about' => 'welcome#about'
  root to: 'welcome#index'

end
end
