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

class Labware < ActiveRecord::Base
    validates :name, :rest, :loan, :group,  presence: true
end
