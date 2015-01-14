# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  username   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :creations
end
