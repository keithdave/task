class Inventory < ApplicationRecord
   belongs_to :department
   has_many :features, dependent: :destroy
   has_many :demands, dependent: :destroy
   
   
   validates :name, presence: true,
                    length: { minimum: 5 }
   
end
