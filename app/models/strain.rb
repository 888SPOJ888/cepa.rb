class Strain < ApplicationRecord
    validates :name, presence: true
    has_many :wine_strains
    has_many :wines, through: :wine_strains

    scope :available, ->{where(available: true)}
end
