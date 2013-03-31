CSPP52553App::Application.routes.draw do

  resources :venues
  resources :events
  resources :students

  get "dice" => 'craps#show', as: 'dice'
  post "dice/roll" => 'craps#roll', as: 'dice_roll'
  get "rps" => "rps#new", as: 'rps'
  post "rps" => 'rps#create'
  get "poker" => 'cards#deal', as: 'poker'
  get "scrabble(/:word)" => 'scrabble#score'

  root to: "pages#home"

  get '/winter2013' => 'pages#winter2013', as: 'winter2013'
  get '/spring2013' => 'pages#home', as: 'spring2013'

  get '/study-guide' => 'pages#study_guide', as: 'study_guide'
end
