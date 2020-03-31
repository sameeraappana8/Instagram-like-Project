Rails.application.routes.draw do
  devise_for :users
  authenticated  :user do
    root "pics#index", as: "authenticated_root"
    resources :pics do
      member do
        put "Like", to: "pics#upvote"
      end
    end
  end
 root 'welcome#index'
end
