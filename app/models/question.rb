#encoding: utf-8
class Question < ActiveRecord::Base
  belongs_to :quiz
end
