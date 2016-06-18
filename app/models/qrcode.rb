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

class Qrcode < ApplicationRecord
  belongs_to :enterprise

  before_create do
    self.code = Qrcode.unique_code
  end

  def self.unique_code
    loop do
      code = [*'a'..'z', *'0'..'9', *'A'..'Z'].sample(8).join
      return code if Qrcode.find_by(code: code).nil?
    end
  end
end
