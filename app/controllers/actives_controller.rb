class ActivesController < ApplicationController
    def index
    end

    def create
        @obj = Active.new
        @obj.name = params[:name]
        @obj.detail = params[:detail]
        if @obj.save 
            render json: @obj, status: :created
        else
            render json: @obj.errors
        end
    end
end