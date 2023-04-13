class Recipe < ActiveRecord::Base
    belongs_to :dessert
    has_many :reviews

end