class FollowsController < ApplicationController
    before_action :find_follow, :only [:show, :edit, :update]

    def index
        @follows = Follow.all
    end

    def show
    end

    def new
        @follow = Follow.new
    end

    def create
        @follow = Follow.create(follow_params)
        # does this need to be separated into 'new' and 'save'
        redirect_to follow_path(@follow)
    end

    def edit
    end

    def update
        @follow.update(follow_params)
        redirect_to follow_path(@follow)
    end

    def delete
        @follow.destroy
        redirect_to follows_path
    end

    private

    def find_follow
        @follow = Follow.find(params[:id])
    end

    def follow_params
        params.require(:follow).permit(:name, :country)
    end
end
