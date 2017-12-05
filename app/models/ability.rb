class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
    #user ||= User.new # guest user (not logged in
    if user.present?
        if user.admin?
          can :manage, :all
        elsif user.secretaria?
            can :manage, NoticiaEscuela
            can :manage, EventoEscuela
            can :manage, Reglamento
            can :manage, Etexto                 ##############
            can :manage, CentroAlumno           # Secretaria #
            can :manage, Programa               # modifica   #
            can :manage, OfertaLaboral          # toda la    #
            can :manage, FuncionarioEscuela     # escuela    #
        elsif user.secretaria2?                 ##############
            can :manage, Texto     #no
            can :manage, [Academico,Casilla] #listo
            can :manage, [Proyecto,AreasDisciplinaria] #listo
            can :manage, FuncionarioDepto #listo
            can :manage, Casilla
        else
          can :read, :all
        end
    else
        can :read, :all
    end
    #if user.present?
    #    if user.admin?
    #        can :manage, :all
    #    end
    #else
    #  can :read, :all
    #end

  end
end
