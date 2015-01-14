# == Schema Information
#
# Table name: creations
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#  user_id     :integer
#  category_id :integer
#

require 'test_helper'

class CreationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
