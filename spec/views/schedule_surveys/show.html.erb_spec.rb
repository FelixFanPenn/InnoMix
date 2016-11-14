require 'rails_helper'

RSpec.describe "schedule_surveys/show", type: :view do
  before(:each) do
    @schedule_survey = assign(:schedule_survey, ScheduleSurvey.create!(
      :user => nil,
      :survey => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
