class LeadsController < ApplicationController
    def index
      @leads = Lead.order(id: :desc).all

      if params[:reset_sorting] == 'true'
        redirect_to leads_path and return
      end

      @leads = @leads.where('LOWER(company_name) LIKE ? OR LOWER(first_name) LIKE ? OR LOWER(last_name) LIKE ?', "%#{params[:search].downcase}%", "%#{params[:search].downcase}%", "%#{params[:search].downcase}%") if params[:search].present?

      @leads = @leads.where(category_id: params[:category]) if params[:category].present?
  
      if params[:size].present?
        range = params[:size].split('-').map(&:to_i)
        @leads = @leads.where(size: range[0]..range[1])
      end
  
      @leads = @leads.where(status_id: params[:status]) if params[:status].present?  
     @leads = @leads.where(exclusive_for_product_id: params[:exclusive_for_product_id]) if params[:exclusive_for_product_id].present?

      @leads = @leads.order("#{params[:sort_column]} #{params[:sort_direction]}") if params[:sort_column].present?
   
      respond_to do |format|
        format.html
        format.js
      end
    end
    
    def show
       @lead = Lead.find(params[:id])
       render json: { first_name: @lead.first_name, last_name: @lead.last_name }
    end

    def claim
      @lead = Lead.find(params[:id])
      
      unless @lead.claimed?
        if @lead.claim
          render json: {
            success: true,
            first_name: @lead.first_name,
            last_name: @lead.last_name,
            claimed: @lead.claimed?,
          }
        else
          render json: { success: false, errors: @lead.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { success: false, errors: ['Lead has already been claimed'] }, status: :unprocessable_entity
      end
    end
  end
  
  