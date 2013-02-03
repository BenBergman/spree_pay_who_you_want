Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :recipients
    resources :products do
      resources :product_recipients
    end
  end

  # Add your extension routes here
end
