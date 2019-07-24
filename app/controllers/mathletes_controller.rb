class MathletesController < ApplicationController
    before_action :find_mathlete, only: [:show, :edit, :update]

    def index
        @mathletes = Mathlete.all
        @mathlete = Mathlete.new
        render layout: false
    end

    def show
        @acolyte_follows = Follow.select { |follow| follow.mathlete_id == @mathlete.id }
        @liked_theorems = @mathlete.likes.map { |like| like.theorem }
        @unliked_theorems = Theorem.all - @liked_theorems
    end

    def new
    end

    def create
        @mathlete = Mathlete.create(mathlete_params)
        # does this need to be separated into 'new' and 'save'
        redirect_to mathlete_path(@mathlete)
    end

    def edit
    end

    def update
        @mathlete.update(mathlete_params)
        redirect_to mathlete_path(@mathlete)
    end

    def delete
        @mathlete.destroy
        redirect_to mathletes_path
    end

    private

    def find_mathlete
        @mathlete = Mathlete.find(params[:id])
    end

    def mathlete_params
        params.require(:mathlete).permit(:name, :country)
    end
end
