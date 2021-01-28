class ServicesController < ApplicationController
    before_action :authenticate_user # only accessible by business owner
    before_action :set_service, only: [:show, :update, :destroy]

    def index
        @services = Service.all
        render json: @services
    end

    def create
        # Creates a new service - user must be logged in for this function
        service = Service.create(service_params)

        if service.errors.any?
            render json: service.errors, status: :unprocessable_entity
        else
            render json: service, status: 201
        end
    end

    def show
        render json: @service
    end

    def update
        @service.update(service_params)

        if @service.errors.any?
            render json: @service.errors, status: :unprocessable_entity
        else
            render json: @service, status: 201
        end
    end

    def destroy
        @service.destroy
        render json: 204
    end

    private
    def service_params
        return params.require(:service).permit(:service_name, :price, :category_id) # references category so must have category ID
    end

    # Finds the services - if not found, will render a 404 Not found error 
    def set_service
        begin
            @service = Service.find(params[:id])
        rescue
            render json: {error: "Service not found"}, status: 404
        end
    end
end
