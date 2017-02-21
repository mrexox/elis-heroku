class Message < ApplicationRecord
  scope :sorted, lambda { order("created_at DESC")}

  EMAIL_REGEXP = /\A[a-z0-9]._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  
  validates :text, :presence => true
  
  validates :theme, :presence => true

  validates :email, :presence => true,
            :format => EMAIL_REGEXP
  
  validates :name, :presence => true
end
