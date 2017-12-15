class MainController < ApplicationController
  def welcome
  	EvioCorreosMailer.contestar.deliver_now
  end
end
