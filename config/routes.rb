Rails.application.routes.draw do
    get '/blogs' => 'blog#index'

    get '/new' => 'blog#new', as: 'new_blog'
    post '/blogs' => 'blog#create', as: 'create_blog'

    get '/blogs/:id/edit' => 'blog#edit', as: 'edit_blog'
    patch '/blogs/:id' => 'blog#update', as: 'update_blog'

    delete '/blogs/:id' => 'blog#destroy', as: 'delete_blog'

    get '/blogs/:id' => 'blog#show', as: 'one_blog'

    resources :blogs, only: [:index, :show, :new, :create, :edit, :update]
end
