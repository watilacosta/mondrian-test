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

class Vehicle < ApplicationRecord
  belongs_to :user

  validates :board, :renavam, :model, :year, :user, presence: true

  def transferir_propriedade(novo_proprietario)
    self.user = novo_proprietario
    self.save!
  end
end
