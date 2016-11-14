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

class ScheduleSurveySerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :survey
end
