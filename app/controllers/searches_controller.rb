class SearchesController < ApplicationController
    def search
        word=params[:search_content]
        @posts = Post.where("title LIKE ? or body LIKE ?", "%#{word}%", "%#{word}%")
    end
end
