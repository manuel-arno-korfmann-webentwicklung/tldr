class StudyGroupEventsController < ApplicationController
  before_action :set_study_group_event, only: [:show, :edit, :update, :destroy]

  # GET /study_group_events
  # GET /study_group_events.json
  def index
    @study_group_events = StudyGroupEvent.all
  end

  # GET /study_group_events/1
  # GET /study_group_events/1.json
  def show
  end

  # GET /study_group_events/new
  def new
    @study_group_event = StudyGroupEvent.new
  end

  # GET /study_group_events/1/edit
  def edit
  end

  # POST /study_group_events
  # POST /study_group_events.json
  def create
    @study_group_event = StudyGroupEvent.new(study_group_event_params)

    respond_to do |format|
      if @study_group_event.save
        format.html { redirect_to @study_group_event, notice: 'Study group event was successfully created.' }
        format.json { render :show, status: :created, location: @study_group_event }
      else
        format.html { render :new }
        format.json { render json: @study_group_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_group_events/1
  # PATCH/PUT /study_group_events/1.json
  def update
    respond_to do |format|
      if @study_group_event.update(study_group_event_params)
        format.html { redirect_to @study_group_event, notice: 'Study group event was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_group_event }
      else
        format.html { render :edit }
        format.json { render json: @study_group_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_group_events/1
  # DELETE /study_group_events/1.json
  def destroy
    @study_group_event.destroy
    respond_to do |format|
      format.html { redirect_to study_group_events_url, notice: 'Study group event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_group_event
      @study_group_event = StudyGroupEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_group_event_params
      params.require(:study_group_event).permit(:date)
    end
end
