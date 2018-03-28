Rails.application.routes.draw do
  get '/interfaces' => "audio_interfaces#index"
  get '/interfaces/:id' => "audio_interfaces#show"
  post '/interface' => "audio_interfaces#create"
end
