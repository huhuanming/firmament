# == Schema Information
#
# Table name: qrcodes
#
#  id            :integer          not null, primary key
#  code          :string           not null
#  creator_id    :integer          not null
#  enterprise_id :integer
#  goods_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class QrcodeSerializer < ActiveModel::Serializer
  attributes :id, :code
end
