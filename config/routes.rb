CSPP52553App::Application.routes.draw do

  resources :exam_users


  resources :exam_answers


  resources :exam_options


  resources :exam_questions


  resources :venues
  resources :events
  resources :students

  get "dice" => 'craps#show', as: 'dice'
  post "dice/roll" => 'craps#roll', as: 'dice_roll'
  get "rps" => "rps#new", as: 'rps'
  post "rps" => 'rps#create'
  get "poker" => 'cards#deal', as: 'poker'
  get "scrabble(/:word)" => 'scrabble#score'

  if Rails.env.development?
    get '/midterm' => 'midterms#show'
    get '/midterm/login' => 'midterms#new'
    get '/midterm/done' => 'midterms#done'
    post '/midterms' => 'midterms#create'
    post '/midterm/done' => 'midterms#done'
  end

  get '/midterm_key' => 'pages#midterm_key'
  root to: "pages#home"

  get '/winter2013' => 'pages#winter2013', as: 'winter2013'
  get '/spring2013' => 'pages#home', as: 'spring2013'

  get '/study-guide' => 'pages#study_guide', as: 'study_guide'
end
