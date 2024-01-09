class NotesController < ApplicationController
    before_action :set_lead

    def new
        @note = @lead.notes.build
    end

    def create
        @lead = Lead.find(params[:lead_id])
        @note = @lead.notes.build(note_params)
    
        if @note.save
          redirect_to leads_path, notice: 'Note added successfully.'
        else
          render 'leads/show'
        end
      end
    
    private
  
    def note_params
      params.require(:note).permit(:author, :creation_date, :note)
    end

    def set_lead
        @lead = Lead.find(params[:lead_id])
      end
  end
  