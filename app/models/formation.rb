class Formation < ActiveRecord::Base
  belongs_to :team
  has_many :plays
  accepts_nested_attributes_for :plays,
      reject_if: :all_blank

end
