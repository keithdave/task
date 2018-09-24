class AccessPolicy
  include AccessGranted::Policy

  def configure
    
	 role :administrator, { is_admin: true } do


        can :create, Employee

        can :read, Employee

        can :update, Employee

        can :destroy, Employee
		
		
		can :create, Department

        can :read, Department

        can :update, Department

        can :destroy, Department
   
   
        can :create, Inventory

        can :read, Inventory

        can :update, Inventory

        can :destroy, Inventory
		
		
		
		can :create, Account

        can :read, Account

        can :update, Account

        can :destroy, Account
		
		
		role :director do
		

        can :read, Employee

		can :read, Department

        can :read, Inventory

        can :read, Account
		
		
		role :manager do
		
		can :create, Employee

        can :read, Employee

        can :update, Employee

        can :destroy, Employee
		
		

        can :read, Department


        can :create, Inventory

        can :read, Inventory

        can :update, Inventory

        can :destroy, Inventory
		
		
		
		can :create, Account

        can :read, Account

        can :update, Account

        can :destroy, Account
		
		
		role :employee do
		
		can :read, Department
		

        can :read, Inventory

        can :update, Inventory

        can :destroy, Inventory
		
		
		can :read, Account

        can :update, Account

        
		

        

        

  end
end
