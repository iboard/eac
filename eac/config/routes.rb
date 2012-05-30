Rails.application.routes.draw do


  mount Eacusr::Engine => "/eacusr"
  mount Eactheme::Engine => "/eactheme"

  root to: 'engines#index'

end
