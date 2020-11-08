class StudyGroupsController < ApplicationController
  before_action :set_study_group, only: [:show, :edit, :update, :destroy, :create_zoom_meeting]
  before_action :authenticate_user!
  
  def create_zoom_meeting
    zoom_api_client = Zoom::Client::OAuth.new(access_token: User.last.zoom_oauth_data.token)
    zoom_meeting = zoom_api_client.meeting_create(user_id: User.last.zoom_user_id)
    
    @study_group.zoom_meeting_join_url = zoom_meeting["join_url"]
    @study_group.save!
    
    @study_group.study_group_attendances.where(host: true).first.try(:update_attribute, :host, false)
    @study_group.study_group_attendances.where(user: current_user).first.update_attribute(:host, true)
    
    redirect_to @study_group
  end
  
  
  # GET /study_groups
  # GET /study_groups.json
  def index
    @study_groups = StudyGroup.all
  end

  # GET /study_groups/1
  # GET /study_groups/1.json
  def show
  end

  # GET /study_groups/new
  def new
    @study_group = StudyGroup.new
  end

  # GET /study_groups/1/edit
  def edit
  end

  # POST /study_groups
  # POST /study_groups.json
  def create
    @study_group = StudyGroup.new(study_group_params)

    respond_to do |format|
      if @study_group.save
        format.html { redirect_to @study_group, notice: 'Study group was successfully created.' }
        format.json { render :show, status: :created, location: @study_group }
      else
        format.html { render :new }
        format.json { render json: @study_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_groups/1
  # PATCH/PUT /study_groups/1.json
  def update
    respond_to do |format|
      if @study_group.update(study_group_params)
        format.html { redirect_to @study_group, notice: 'Study group was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_group }
      else
        format.html { render :edit }
        format.json { render json: @study_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_groups/1
  # DELETE /study_groups/1.json
  def destroy
    @study_group.destroy
    respond_to do |format|
      format.html { redirect_to study_groups_url, notice: 'Study group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_group
      @study_group = StudyGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_group_params
      params.fetch(:study_group, {})
    end
end
