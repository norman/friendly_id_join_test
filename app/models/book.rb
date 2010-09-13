class Book < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true
  belongs_to :author
  belongs_to :publisher
end
