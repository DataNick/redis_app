Rails.application.routes.draw do
  get 'emails' => "emails#index"

  post 'emails/standard'

  post 'emails/delayed'

  root 'letters#index'
  resources :letters, only: [:index] do
    member do
      patch :upvote # /letters/:id/upvote
      patch :downvote # /letters/:id/downvote
    end
  end

end
