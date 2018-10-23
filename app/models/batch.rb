class Batch < ApplicationRecord
	validates :reference, presence: true
	validates :purchase_channel, presence: true
	validates :orders, presence: true
end
