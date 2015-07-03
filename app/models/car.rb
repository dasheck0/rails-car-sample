class Car < ActiveRecord::Base
  attr_accessible :color, :height, :length, :name, :width

  validates :name, :presence => true
  validates :height, :numericality => true

end
