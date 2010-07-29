class Vendedor < ActiveRecord::Base
  has_many :notas, dependent => destroy
end
