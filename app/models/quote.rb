class Quote < ActiveRecord::Base
  attr_accessible :author, :content, :language, :written_at

  validates_presence_of :author, :content

  def as_text
    "
      #{id}.
      #{content}
      --#{author}
    "
  end
end
