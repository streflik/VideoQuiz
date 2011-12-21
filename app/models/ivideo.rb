#encoding: utf-8
class Ivideo < Quiz
  default_scope where(:ivideo=>true)


  def welcome_movie
    welcome_id1 || welcome_id2
  end

  def end_movie
    end_id1 || end_id2
  end

end
