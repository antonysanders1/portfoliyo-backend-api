class WorksController < ApplicationController

    def index
        works = Work.all.with_attached_image.order(id: :desc)
        render json: works
    end

    def show
        work = Work.find_by(id: params[:id])
        render json: work
    end

    def create
        work = Work.create(work_params)
        if work
            render json: work
        else
            render json: {error: "Could not create post."}
        end
        
    end

    def update
        work = Work.find(params[:id])
        work.update(image: params[:image])
        
        render json: work
    end

    # def destroy
    #     work = Work.find_by(id: params[:id])
    #     work.delete(work_params)
    #     render json: work
    # end

    private

    def work_params
        params.require(:work).permit(:title, :description, :user_id, :image)
    end

end
