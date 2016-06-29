class Program < ActiveRecord::Base
    #Se agrego para las relaciones
    #attr_reader :categories
    after_create :save_computers

    def computers=(value)
      @computers=value
    end

    def save_computers
      #raise @computers.to_yaml
      @computers.each do |computer_id|
        HasComputer.create(computer_id: computer_id,program_id: self.id)
      end
    end
end
