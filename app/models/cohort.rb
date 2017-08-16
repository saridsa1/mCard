class Cohort < ApplicationRecord
  has_and_belongs_to_many :humen

  validates :name, uniqueness: { case_sensitive: false }, presence: true

  def to_s
    name
  end

  def self.options_for_select
    order('id').map { |e| [e.name, e.id] }
  end

end