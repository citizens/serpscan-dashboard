Serpscan::Dashboard::Engine.routes.draw do
  get '/' => 'websites#index', as: :websites
  get '/:id' => 'websites#show', as: :website
  post '/:id/keyword' => 'keywords#create'
  get '/keywords/delete' => 'keywords#delete'
end
