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
    class Date < Question
      def validate_answer(answer)
        super(answer)

        if rules[:presence] == "1" || answer.answer_text.present?
          begin  ::Date.parse(answer.answer_text.to_s)
          rescue ArgumentError => e
            answer.errors.add(:answer_text, :invalid)
          end
        end
      end
    end
  end
