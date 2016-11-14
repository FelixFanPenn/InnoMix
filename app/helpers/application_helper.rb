module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "ResearchAide"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  def render_answer_form_helper(answer, form)
      partial = answer.question.type.to_s.split("::").last.downcase
      render partial: "answers/#{partial}", locals: { f: form, answer: answer }
    end

    def checkbox_checked?(answer, option)
      answers_delimiter = "\r\n"
      answers = answer.answer_text.to_s.split(answers_delimiter)
      answers.include?(option)
    end
end
