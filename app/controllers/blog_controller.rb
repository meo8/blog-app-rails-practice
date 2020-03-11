class BlogController < ApplicationController

    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
    end

    def create
        @blog = Blog.create(title: params[:title], content: params[:content])

        if @blog.valid?
            redirect_to @blog
         else
            render action: :new
        end
    end

    def edit
        @blog = Blog.find(params[:id])
    end

    def update
        @blog = Blog.find(params[:id])

         @blog.update(
            title: params[:blog][:title],
            content: params[:blog][:content])
         redirect_to one_blog_path(@blog)
    end

    def destroy
        @blog = Blog.find(params[:id]).destroy
        redirect_to @blog
    end
end
