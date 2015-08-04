class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies

  def age
    2015 - year_of_birth
  end
end
