class V1::OrgsController < ApplicationController
    def index
        @orgs = Org.all

        render json: @orgs, status: :ok 
    end

    def create 
        @org = Org.new(org_params)

        @org.save
        render json: @org, status: :created
    end


    def destroy
        @org = Org.where(id: params[:id]).first
        if @org.destroy
            head(:ok)
        else 
            head(:unprocessable_entity)
        end         
    end

    private 

    def org_params
        params.require(:org).permit(:org_name, :org_email)
    end

end
