#encoding: utf-8
module IvideosHelper

    def add_question_link(name, form)
      task = render(:partial => 'question', :locals => { :pf => form, :question => Question.new })
      link_to_function name, "var new_question_id = 'new_' + new Date().getTime();
        $('#questions').append('#{ escape_javascript task }'.replace(/new_\\d+/g, new_question_id) );
        "
    end
  end

