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

class ScheduleSurvey < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey

  validates :user_id, :presence => true
  validates :user, presence: {message: "This user does not exist."}
  validates :survey_id, :presence =>true
  validates :survey, presence: {message: "This survey does not exist."}
end
