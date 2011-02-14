class Admin::Page < ActiveRecord::Base
  validates_presence_of :title
  has_friendly_id :title, :use_slug => true, :cache_column => 'cached_slug'
end
