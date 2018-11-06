class Requirement < ApplicationRecord
  belongs_to :database
  has_many :atributos

  before_save do
  	self.atributo.gsub!(/[\[\]\"]/,"") if attribute_present?("atributo")
  end


end
