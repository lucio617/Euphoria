Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "videos#home"

  get "/create",to: "videos#create"
  get 'show',to: "videos#show"
  get '/upload',to: "videos#upload"

  post '/upload_video', to: 'videos#upload_video'
  get '/success', to: "videos#success"

  get "/stream",to:"videos#stream"

  get "/mood",to:"users#mood"

  post "/addComment",to: "comments#add"

  get 'signin',to: "users#signin"

  get '/profile',to: "users#profile_selection"

  get '/admin',to: "users#admin"

  get '/edit_profile', to: "users#edit_profile"

  post '/handle_signin',to: "users#handle_signin"




end
