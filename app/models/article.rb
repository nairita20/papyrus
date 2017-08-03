class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  searchkick word_start: [:title]
  include Tire::Model::Search
  include Tire::Model::Callbacks
 #  mapping do
 #    indexes :text, :index => :not_analyzed
 #    indexes :title,:index => :not_analyzed
 #    indexes :summary, :index => :not_analyzed
 #  end
	#   Tire.index 'articles' do
	#       delete
	#       create
	# #       mapping do 
	# #     indexes :title, type: 'string', index: 'keyword'
	# #     indexes :text, type: 'string', index: 'keyword'
	# # end
	#       refresh
	#     end
end
