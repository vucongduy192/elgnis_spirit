# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

  user ||= User.new

    case user.role
    when "admin"
      can :access, :rails_admin
      can :read, :dashboard
      can :manage, [User, Image, Advertisement]
    when "member"
    end
  end
end
