class Category < ActiveRecord::Base
    validates_presence_of :name
    has_many :issues,
    inverse_of: :category

end
