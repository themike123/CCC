class HasComputer < ActiveRecord::Base
  belongs_to :program
  belongs_to :computer
end
