class Lemur < ActiveRecord::Base

  scope :species, -> (species) { where species: species }
  scope :region, -> (region) { where region: region }
  scope :year, -> (year) { where year: year }


end