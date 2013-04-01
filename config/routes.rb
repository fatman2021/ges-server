MusicServer::Application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do

      resources :collections do
        resources :tracks, only: [:index]
      end
    end
  end


end
