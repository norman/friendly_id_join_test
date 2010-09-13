class Publisher < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true
  has_many :books
end
