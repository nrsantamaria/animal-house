Rails.application.routes.draw do
  resources :types do
    resources :animals
  end
end
