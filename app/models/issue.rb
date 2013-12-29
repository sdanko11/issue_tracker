class Issue < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :severity
  belongs_to :category,
    inverse_of: :issues
    
  def self.severities
    [
      "Low",
      "Moderate",
      "High"
    ]
  end

end
