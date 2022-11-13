class Role < ActiveRecord::Base
    has_many :auditions


    def auditions 
        self.role_audition
    end
    
    def actors
        self.auditions.map {|audition| audition.actor} 
    end

    def locations
        self.auditions.map {|audition| audition.location}
    end

    def lead
        if auditions.size>1
       return  self.auditions.map {|audition| audition.actor}.first 
        else
       return 'No actor has been hired for this role'
        end
    end

    def understudy
        if auditions.size>2
            return  self.auditions.map {|audition| audition.actor}.seond 
             else
            return 'No actor has been hired for this understudy role'
         end
    end

  end