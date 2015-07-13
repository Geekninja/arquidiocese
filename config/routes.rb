Rails.application.routes.draw do


  devise_for :users
   namespace :cms, path: 'conteudo' do
     root 'pages#index'
     resources :posts, path: 'postagens'
     resources :post_categories, path: 'postagem_categorias'

     resources :pages, path: 'paginas'
     resources :page_categories, path: 'pagina_categorias'

  #   resources :users, path: 'usuario'
   end

    namespace :content, path: '/' do
      root 'home#index'
    end
end
