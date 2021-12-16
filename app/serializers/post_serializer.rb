class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags

  def short_content
    "#{self.object.title} - #{self.object.content[0..49]}..."
  end

end
