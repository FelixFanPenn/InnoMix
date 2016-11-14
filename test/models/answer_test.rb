# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  attempt_id  :integer
#  question_id :integer
#  answer_text :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
