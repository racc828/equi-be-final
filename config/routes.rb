Rails.application.routes.draw do
  namespace :api do
		namespace :v1 do
			resources :users, :midpoints, :searches, :locations, :venues
      post '/searches/get_user_searches', to: 'searches#get_user_searches'
      post '/sessions', to: 'sessions#create'
      get '/sessions/current_user', to: 'sessions#show'
		end
	end
end
