Rails.application.routes.draw do

    namespace :content, path: '/' do
    root 'home#index'
    end
end
