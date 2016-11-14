require 'rails_helper'

RSpec.describe "schedule_surveys/index", type: :view do
  before(:each) do
    assign(:schedule_surveys, [
      ScheduleSurvey.create!(
        :user => nil,
        :survey => nil
      ),
      ScheduleSurvey.create!(
        :user => nil,
        :survey => nil
      )
    ])
  end

  it "renders a list of schedule_surveys" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
