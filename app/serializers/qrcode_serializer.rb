# == Schema Information
#
# Table name: qrcodes
#
#  id            :integer          not null, primary key
#  code          :string
#  creator_id    :integer
#  enterprise_id :integer
#  goods_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class QrcodeSerializer < ActiveModel::Serializer
  attributes :code
end
