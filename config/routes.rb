Rails.application.routes.draw do
  resources :pharmacies do
    collection {post :import}
  end
  
  root 'pharmacies#index'

end
