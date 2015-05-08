Rails.application.routes.draw do
  mount Serpscan::Dashboard::Engine => "/serpscan"
end
