Rails.application.routes.draw do


  namespace :cms do
    resources :priests
  end
  namespace :cms do
    resources :parishes
  end
  devise_for :users
   namespace :cms do
     root 'pages#index'
     resources :posts, path: 'postagens'
     resources :post_categories, path: 'postagem_categorias'

     resources :pages, path: 'paginas'
     resources :page_categories, path: 'pagina_categorias'

  #   resources :users, path: 'usuario'
   end

    namespace :content, path: '/' do
      root 'home#index'

      resources :posts
      resources :post_categories
      resources :pages
      resources :page_categories
      resources :parishes
    end
end
