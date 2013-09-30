Witrabbit::Application.routes.draw do
  get "welcome/index"
  root 'readings#index'
  resources :readings, :readers
end
