class StudyGroupEventAttendancesController < ApplicationController
  before_action :set_study_group_event_attendance, only: [:show, :edit, :update, :destroy]

  # GET /study_group_event_attendances
  # GET /study_group_event_attendances.json
  def index
    @study_group_event_attendances = StudyGroupEventAttendance.all
  end

  # GET /study_group_event_attendances/1
  # GET /study_group_event_attendances/1.json
  def show
  end

  # GET /study_group_event_attendances/new
  def new
    @study_group_event_attendance = StudyGroupEventAttendance.new
  end

  # GET /study_group_event_attendances/1/edit
  def edit
  end

  # POST /study_group_event_attendances
  # POST /study_group_event_attendances.json
  def create
    @study_group_event_attendance = StudyGroupEventAttendance.new(study_group_event_attendance_params)

    respond_to do |format|
      if @study_group_event_attendance.save
        format.html { redirect_to @study_group_event_attendance, notice: 'Study group event attendance was successfully created.' }
        format.json { render :show, status: :created, location: @study_group_event_attendance }
      else
        format.html { render :new }
        format.json { render json: @study_group_event_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_group_event_attendances/1
  # PATCH/PUT /study_group_event_attendances/1.json
  def update
    respond_to do |format|
      if @study_group_event_attendance.update(study_group_event_attendance_params)
        format.html { redirect_to @study_group_event_attendance, notice: 'Study group event attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_group_event_attendance }
      else
        format.html { render :edit }
        format.json { render json: @study_group_event_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_group_event_attendances/1
  # DELETE /study_group_event_attendances/1.json
  def destroy
    @study_group_event_attendance.destroy
    respond_to do |format|
      format.html { redirect_to study_group_event_attendances_url, notice: 'Study group event attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_group_event_attendance
      @study_group_event_attendance = StudyGroupEventAttendance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_group_event_attendance_params
      params.require(:study_group_event_attendance).permit(:study_group_attendance_id, :study_group_event_id)
    end
end
