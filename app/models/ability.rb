class Ability  
  include CanCan::Ability
  
  def initialize(thisuser)
    
    thisuser ||= User.new
    
    if thisuser.has_role? :manager
      can :manage, :all
    elsif thisuser.has_role? :renter
      can :index, :all
      can :manage, thisuser
    else
      can :index, :all
      can :create, :all
    end
  end
  
end