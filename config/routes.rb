Rails.application.routes.draw do
  get '/interfaces' => "audio_interfaces#index"
  get '/interfaces/:id' => "audio_interfaces#show"
  post '/interfaces' => "audio_interfaces#create"
  post '/interfaces/:id' => "audio_interfaces#update"
  delete '/interfaces/:id' => "audio_interfaces#destroy"
end
