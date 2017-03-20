class PaymentsController < ApplicationController
	def process_payment
	  xml = params[:response]

	  epay_response_is_okay = KazkomEpay::Epay.check_signed_xml xml
	  if epay_response_is_okay
	    epay_response = Hash.from_xml(xml)['document']['bank']

	    begin
	      ActiveRecord::Base.transaction do
	        # Задача этого блока - увеличить счет пользователя

	        # Нужно найти Order_ID, который вы создали на этапе формировани
	        # XML для отправки в ePay.
	        # Например так (при условии, что у вас есть модель PaymentRequest):
	        payment_request = PaymentRequest.find epay_response['customer']['merchant']['order']['order_id']

	        # из него вы можете выяснить, счет какого пользователя увеличить:
	        user = payment_request.user
	      end
	    rescue => e
	      # Что-то пошло не так, зафиксируйте это в логах и сделайте все, чтобы
	      # вы об этом узнали (отошлите себе уведомление и пр.)
	      Rails.logger.fatal "Что-то пошло не так при оплате через ePay. Данные: " + params.to_json

	      # ...
	    end
	  else
	    # Подпись оказалась неверной. Возможно, вас пытаются взломать
	  end

	  # Обязательно выведите "0" и ничего больше, это требование ePay
	  render text: "0"
	end
end
