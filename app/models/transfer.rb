# == Schema Information
#
# Table name: transfers
#
#  id         :bigint           not null, primary key
#  seller_id  :bigint
#  buyer_id   :bigint
#  vehicle_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Transfer < ApplicationRecord
  belongs_to :seller, class_name: 'User'
  belongs_to :buyer,  class_name: 'User'
  belongs_to :vehicle

  validates :seller, :buyer, :vehicle, presence: true
end
