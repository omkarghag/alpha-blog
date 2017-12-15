class Category < ActiveRecord::Base
   has_many :articlescategories
   has_many :articles, through: :articlescategories
   validates :name, presence: true,
             length: { minimum: 3, maximum: 25 }
   validates_uniqueness_of :name            ##ensures uniqueness of a field
   
end