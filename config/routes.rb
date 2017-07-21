Rails.application.routes.draw do
  resources :types do
    get 'page/:page', action: :index, on: :collection
    resources :animals
    get 'page/:page', action: :index, on: :collection
  end
end
