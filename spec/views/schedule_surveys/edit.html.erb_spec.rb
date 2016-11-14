require 'rails_helper'

RSpec.describe "schedule_surveys/edit", type: :view do
  before(:each) do
    @schedule_survey = assign(:schedule_survey, ScheduleSurvey.create!(
      :user => nil,
      :survey => nil
    ))
  end

  it "renders the edit schedule_survey form" do
    render

    assert_select "form[action=?][method=?]", schedule_survey_path(@schedule_survey), "post" do

      assert_select "input#schedule_survey_user_id[name=?]", "schedule_survey[user_id]"

      assert_select "input#schedule_survey_survey_id[name=?]", "schedule_survey[survey_id]"
    end
  end
end
