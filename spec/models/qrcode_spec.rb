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

require 'rails_helper'

RSpec.describe Qrcode, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
