class GifCollection < ActiveRecord::Base

  has_one :frequency
  has_many :gif_collection_members



end
