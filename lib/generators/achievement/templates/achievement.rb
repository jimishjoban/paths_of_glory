class <%= class_name %> < Achievement
  
  # The required quotas to meet for each achievement level.
  # level 1, :quota => 5
  # level 2, :quota => 10
  # level 3, :quota => 30
  # level 4, :quota => 100
  # level 5, :quota => 500
  
  # Return the value that needs to be checked against the quotas
  # set_thing_to_check { |user| ... }

  # Comment out below for multi-level achievements
  # def self.award_achievements_for(user)
  #   return unless user
  #   levels.each do |level|
  #     if !user.has_achievement?(self, level[:level]) and thing_to_check(user) >= level[:quota]
  #       user.award_achievement(self, level[:level])
  #     end
  #   end
  # end

  # Comment out below for once-off achievements
  # def self.award_achievements_for(user)
  #   return unless user
  #   return if user.has_achievement?(self)
  #   user.award_achievement(self)
  # end
  
  # Change to reflect the purpose of this achievement.
  def self.description
    'An achievement description.'
  end
  
  # Change the image to use for the achievement.
  #  Be sure to include this file in Rails.root/public/images
  def self.image
    'achievement-default.png'
  end
  
end