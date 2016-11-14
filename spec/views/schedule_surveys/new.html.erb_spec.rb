require 'rails_helper'

RSpec.describe "schedule_surveys/new", type: :view do
  before(:each) do
    assign(:schedule_survey, ScheduleSurvey.new(
      :user => nil,
      :survey => nil
    ))
  end

  it "renders new schedule_survey form" do
    render

    assert_select "form[action=?][method=?]", schedule_surveys_path, "post" do

      assert_select "input#schedule_survey_user_id[name=?]", "schedule_survey[user_id]"

      assert_select "input#schedule_survey_survey_id[name=?]", "schedule_survey[survey_id]"
    end
  end
end
