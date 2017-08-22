# == Schema Information
#
# Table name: labwares
#
#  id         :integer          not null, primary key
#  name       :string
#  rest       :integer
#  loan       :integer
#  group      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LabwareTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
