Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root 'pages#home'
   
   get '/home', to:'pages#home'

   resources :posts

   resources :users, except: [:new]

   get '/register', to: 'users#new'

   get '/login', to: "logins#new"
   get '/login', to: "logins#create"
   get '/logout', to: "logins#destroy"

   
end
