class Reading < ActiveRecord::Base
  mount_uploader :flyer, FlyerUploader
  has_many :readers
end
