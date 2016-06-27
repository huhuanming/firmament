# == Schema Information
#
# Table name: enterprises
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  address     :string
#  owner_name  :string
#  owner_phone :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EnterpriseSerializer < ActiveModel::Serializer
  attributes :id, :name
end
