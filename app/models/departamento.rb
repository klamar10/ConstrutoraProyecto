class Departamento < ApplicationRecord
  belongs_to :mantenis
  validates :piso, presence: true
end
