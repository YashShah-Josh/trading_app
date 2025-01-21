class UserDetail < ApplicationRecord
    validates :name, presence: true
    validates :mobile_number, presence: true
    validates :email, presence: true, uniqueness: true
    validates :address, presence: true
    validates :bank_account_number, presence: true, uniqueness: true
    validates :ifsc_code, presence: true
    validates :upi_id, presence: true, uniqueness: true
    validates :aadhar_card_number, presence: true, uniqueness: true
    validates :pan_card_number, presence: true, uniqueness: true

    has_many :transaction_details
end
