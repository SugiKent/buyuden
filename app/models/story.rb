class Story < ApplicationRecord
  has_many :reputations

  validates :title, presence: true
  validates :content, presence: true

  def goods
    self.reputations.where(rep_type:1)
  end
  def bads
    self.reputations.where(rep_type:0)
  end
end
