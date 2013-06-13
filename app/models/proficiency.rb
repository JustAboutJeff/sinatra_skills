class Proficiency < ActiveRecord::Base
  # validates :formal, :inclusion => {:in => [true, false]}, :default => false
  # validates :years, :numericality => true

  belongs_to :skill
  belongs_to :user
end
