class Plat < ApplicationRecord
  has_many :comments, dependent: :destroy
end
