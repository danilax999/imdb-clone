# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Movie
    return if user.blank?

    can :rate, Movie
  end
end
