class Contact < ApplicationRecord
    validates :name, :email, :phone, presence: true
    validates :phone, presence: true, length: { is: 10 }
    validates_uniqueness_of :name, :email, :phone
    has_one_attached :image
end
