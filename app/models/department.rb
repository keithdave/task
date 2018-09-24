class Department < ApplicationRecord
   has_many :inventory
   has_many :account
   has_many :employee
   validates :name, presence: true,
                    length: { minimum: 5 }
		
end

