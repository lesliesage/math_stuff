class TheoremsController < ApplicationController
    before_action :find_theorem, :only [:show, :edit, :update]

    def index
        @theorems = Theorem.all
    end

    def show
    end

    def new
        @theorem = Theorem.new
    end

    def create
        @theorem = Theorem.create(theorem_params)
        # does this need to be separated into 'new' and 'save'
        redirect_to theorem_path(@theorem)
    end

    def edit
    end

    def update
        @theorem.update(theorem_params)
        redirect_to theorem_path(@theorem)
    end

    def delete
        @theorem.destroy
        redirect_to theorems_path
    end

    private

    def find_theorem
        @theorem = Theorem.find(params[:id])
    end

    def theorem_params
        params.require(:theorem).permit(:name, :country)
    end
end
