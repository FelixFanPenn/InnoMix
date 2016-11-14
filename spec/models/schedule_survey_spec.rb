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

require 'rails_helper'

RSpec.describe ScheduleSurvey, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
