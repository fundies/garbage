Rottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :reviews
  end
  post '/movies/search_tmdb'
  root :to => redirect('/movies')
	get  'auth/:twitter/callback' => 'sessions#create'
	get 'logout' => 'sessions#destroy'
	get  'auth/failure' => 'sessions#failure'
  match 'movies/potatoes/:id' => 'movies#potatoes', :as => :movies_potatoes
end
