# == Schema Information
#
# Table name: attempts
#
#  id         :integer          not null, primary key
#  survey_id  :integer
#  user_id    :integer
#  user_type  :string
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class AttemptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
