class MembershipsController < ApplicationController
    
    def show
        membership = find_membership
        render json: membership
    end

    def create
        membership = Membership.create!(membership_params)
        render json: membership, status: :created
    end
private
    def find_membership
        Membership.find(params[:id])
    end

    def membership_params
        params.permit(:charge, :gym_id, :client_id)
    end
end
