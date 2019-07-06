class Manteni < ApplicationRecord
 		has_many :departamentos, dependent: :destroy
 		
end
