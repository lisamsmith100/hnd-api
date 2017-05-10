# frozen_string_literal: true

class EntriesController < ProtectedController
  before_action :set_entry, only: [:show, :update, :destroy]

  # GET /entries
  def index
    @entries = current_user.entries.all
    # @entries = @entries.sort_by(&:date_added :id)
    render json: @entries
  end

  # GET /entries/1
  def show
    @entry = current_user.entry.all
    render json: @entry
  end

  # POST /entries
  def create
    @entry = current_user.entries.build(entry_params)

    if @entry.save
      render json: @entry, status: :created, location: @entry
      # , location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      render json: @entry
      head :no_content
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  def destroy
    # same as @entry = Entry.find(params[:id])
    @entry.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = current_user.entries.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def entry_params
    params.require(:entry).permit(:id, :title, :backstory, :stopper, :status)
    # , :backstory, :stopper, :status, :date_added, :deleted_flag
  end
end
