class Page < ActiveRecord::Base
  validates_presence_of :permalink, :name
end
