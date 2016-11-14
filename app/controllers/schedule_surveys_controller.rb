class ScheduleSurveysController < ApplicationController
  before_action :set_schedule_survey, only: [:show, :edit, :update, :destroy]

  # GET /schedule_surveys
  # GET /schedule_surveys.json
  def index
    @schedule_surveys = ScheduleSurvey.all
  end

  def list_survey
    @schedule_surveys = ScheduleSurvey.where(:survey_id => params[:my_param])
  end

  def list_survey_user
    @schedule_surveys = ScheduleSurvey.where(:user_id => params[:my_param])
  end
  


  # GET /schedule_surveys/1
  # GET /schedule_surveys/1.json
  def show
  end

  # GET /schedule_surveys/new
  def new
    @schedule_survey = ScheduleSurvey.new
    @survey_id = params[:my_param]
  end

  # GET /schedule_surveys/1/edit
  def edit
  end

  # POST /schedule_surveys
  # POST /schedule_surveys.json
  def create
    @schedule_survey = ScheduleSurvey.new(schedule_survey_params)

    respond_to do |format|
      if @schedule_survey.save
        format.html { redirect_to @schedule_survey, notice: 'Schedule survey was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_survey }
      else
        format.html { render :new }
        format.json { render json: @schedule_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_surveys/1
  # PATCH/PUT /schedule_surveys/1.json
  def update
    respond_to do |format|
      if @schedule_survey.update(schedule_survey_params)
        format.html { redirect_to @schedule_survey, notice: 'Schedule survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_survey }
      else
        format.html { render :edit }
        format.json { render json: @schedule_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_surveys/1
  # DELETE /schedule_surveys/1.json
  def destroy
    @schedule_survey.destroy
    respond_to do |format|
      format.html { redirect_to schedule_surveys_url, notice: 'Schedule survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_survey
      @schedule_survey = ScheduleSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_survey_params
      params.require(:schedule_survey).permit(:user_id, :survey_id)
    end
end
