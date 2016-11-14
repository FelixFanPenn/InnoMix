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

module Questions
    class Numeric < Question
      def validate_answer(answer)
        super(answer)

        if rules[:presence] == "1" || answer.answer_text.present?
          gt_or_lt = {}
          if rules[:greater_than_or_equal_to].present?
            gt_or_lt[:greater_than_or_equal_to] = rules[:greater_than_or_equal_to].to_i
          end
          if rules[:less_than_or_equal_to].present?
            gt_or_lt[:less_than_or_equal_to] = rules[:less_than_or_equal_to].to_i
          end

          answer.validates_numericality_of :answer_text, gt_or_lt
        end
      end
    end
end
