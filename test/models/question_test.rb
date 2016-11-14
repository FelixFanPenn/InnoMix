# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  survey_id        :integer
#  type             :string
#  question_text    :string
#  position         :integer
#  answer_options   :text
#  validation_rules :text
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
