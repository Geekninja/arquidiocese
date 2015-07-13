class Cms::Page < ActiveRecord::Base
  belongs_to :page_category
  validates_presence_of :title, :content, :resume, :page_category
end
