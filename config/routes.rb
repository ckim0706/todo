Todo::Application.routes.draw do
  resources :users do
    resources :todos do
    end
  end
end
