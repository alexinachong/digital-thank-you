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

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
