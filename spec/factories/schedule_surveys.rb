# == Schema Information
#
# Table name: schedule_surveys
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  survey_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :schedule_survey do
    user nil
    survey nil
  end
end
