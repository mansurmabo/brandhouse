class PayController < ApplicationController
	def epay
		path_to_yaml = Rails.root.join('config', 'epay.yml')
		epay_credentials = YAML.load_file(path_to_yaml)
		amount = 12 #hard code
		# здесь вы фиксируете Order_ID, который вы передадите банку
		# и по которому вы сможете в дальнейшем найти нужный платеж
		# и пользователя, чтобы зачислить деньги ему на счет
		payment_request = PaymentRequest.create! do |r|
			r.user = current_user
			r.amount = amount
		end
		order_id = payment_request.id
		epay_credentials.merge!({ amount: amount, order_id: order_id })
		epay = KazkomEpay::Epay.setup(epay_credentials)
		@base64_encoded_xml = epay.base64_encoded_signed_xml
	end
end
