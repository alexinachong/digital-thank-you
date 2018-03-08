# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  customer_id  :integer          not null
#  item         :string           not null
#  giftee_email :string           not null
#  giftee_name  :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Order < ApplicationRecord
  validates :item, :giftee_email, :giftee_name, presence: true

  has_many :notes

  belongs_to :customer 
end
