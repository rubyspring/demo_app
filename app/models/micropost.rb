class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user

  validates :content, :length => { :maximum => 140 }
  validates :content, :length => { :minimum => 5 }
end
