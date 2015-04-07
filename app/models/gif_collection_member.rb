class GifCollectionMember < ActiveRecord::Base

  belongs_to :gif_collection
  belongs_to :gif


end
