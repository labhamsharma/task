class Person < ApplicationRecord
  #belongs_to :parent
  validates :name, presence: true

  has_many :children, class_name: "Person",
                          foreign_key: "parent_id"

  belongs_to :parent, class_name: "Person", optional: true
end
