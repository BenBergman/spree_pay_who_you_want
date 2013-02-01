Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :recipients
  end

  # Add your extension routes here
end
