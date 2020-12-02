require_relative "services/user_payment"
require_relative "services/manager_payment"


class PaymentServiceFactory
	def self.for entity 
		if entity.is_a? User
			UserPaymentService.new
		elsif entity.is_a? Manager
			ManagerPaymentService.new
		end 
	end
end