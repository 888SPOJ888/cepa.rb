class Wine < ApplicationRecord
    validates :name, presence: true
    has_many :wine_strains, dependent: :destroy
    has_many :strains, through: :wine_strains, dependent: :destroy
    has_many :oenologist_wines, dependent: :destroy
    has_many :oenologists, through: :oenologist_wines
    accepts_nested_attributes_for :wine_strains, reject_if: ->(attributes){ attributes['strain_id'].blank? || attributes['percentage'].blank? }, allow_destroy: true
end
