Rails.application.routes.draw do
  resources :types do
    get 'page/:page', action: :index, on: :collection
    collection do
      get :by_species
    end
    resources :animals do
      get 'page/:page', action: :index, on: :collection
      collection do
        get :random
      end
    end
  end
end
