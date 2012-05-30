Eactheme::Engine.routes.draw do
  
  resources :themes do
    collection do
      get "/switch/:theme" => :switch, as: :switch
    end
  end

  root to: 'themes#index'



end
