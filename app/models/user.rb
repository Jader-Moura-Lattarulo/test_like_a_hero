class User < ApplicationRecord
    enum kind: [:knight, :wizard]
    validates :level, inclusion: { in: 1..99 }
  
    def title
      "#{self.kind} #{self.nickname} ##{self.level}"
    end
  end
  