Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'fx#home'

  post 'fx/convert' => 'fx#convert'
end
