# == Schema Information
#
# Table name: vehicles
#
#  id         :bigint           not null, primary key
#  board      :string
#  renavam    :string
#  model      :string
#  year       :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
