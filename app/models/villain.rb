class Villain < ApplicationRecord
    validates :name, :age, :hobbies, :power, :about, :evil_scheme, :image, presence: true
    validates :about, length: { minimum: 10}
end
