# == Schema Information
#
# Table name: enterprises
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  owner_name  :string
#  owner_phone :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Enterprise < ApplicationRecord
end
