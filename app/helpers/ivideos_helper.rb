#encoding: utf-8
module IvideosHelper

    def add_question_link(name, form)
      task = render(:partial => 'question', :locals => { :pf => form, :question => Question.new })
      link_to_function name, "var new_question_id = 'ivideo[questions_attributes][' + new Date().getTime()+']';
        $('#questions').append('#{ escape_javascript task }'.replace(/ivideo\\[questions_attributes\\]\\[(.*?)\\]\\[(.*?)\\]/g, new_question_id+'[$2]'));
        "
      end
  end

