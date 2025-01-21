class Transaction < ApplicationRecord
    validates :brokerage, presence: true
    validates :gst, presence: true
    validates :transaction_value, presence: true
    validates :transaction_type, presence: true
    validates :quantity, presence: true
    validates :user_details, presence: true
    validates :stocks, presence: true
    validates :stock_price, presence: true
end
