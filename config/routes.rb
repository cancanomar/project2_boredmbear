Rails.application.routes.draw do
  get    '/'  => 'ideas#index'

  # The above could also be done with:
  # root to: 'ideas#index'

  resources :ideas, except: [:show] do
    collection do
      get 'random', action: 'show'
    end
  end

  # Because your app doesn't have navigation to specific ideas (they are randomly
  # selected), you would need to use:
  # - the except: modifier to not include show
  # - a custom route for the show view using `collection do`
end
