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

require 'rails_helper'

RSpec.describe Enterprise, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
