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

require 'test_helper'

class TransferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
