class Song < ActiveRecord::Base
  attr_accessible :artist, :bpm, :description, :title, :upvotes, :downvotes, :song_file
  belongs_to :group
  has_attached_file :song_file,
	:storage => :s3,
	:s3_credentials => Rails.root.join('config','amz.yml')
  validates :title, presence: true
  validates :artist, presence: true
  validates :song_file, presence: true
end
