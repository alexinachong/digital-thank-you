# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  order_id   :integer          not null
#  photo_url  :string           not null
#  template   :string           not null
#  message    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ApplicationRecord
  validates :photo_url, :template, :message, presence: true

  belongs_to :order
end
