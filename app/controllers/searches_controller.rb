class SearchesController < ApplicationController
    def search
        word=params[:search_content]
        @posts = Post.where("name LIKE ? or content LIKE ? or title LIKE ?", "%#{word}%", "%#{word}%", "%#{word}%")
    end
end
