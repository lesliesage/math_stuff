class LikesController < ApplicationController
    before_action :find_like, :only [:show, :edit, :update]

    def index
        @likes = Like.all
    end

    def show
    end

    def new
        @like = Like.new
    end

    def create
        @like = Like.create(like_params)
        # does this need to be separated into 'new' and 'save'
        redirect_to like_path(@like)
    end

    def edit
    end

    def update
        @like.update(like_params)
        redirect_to like_path(@like)
    end

    def delete
        @like.destroy
        redirect_to likes_path
    end

    private

    def find_like
        @like = Like.find(params[:id])
    end

    def like_params
        params.require(:like).permit(:name, :country)
    end
end
