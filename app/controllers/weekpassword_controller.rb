require 'password_crack'
class WeekpasswordController < ApplicationController


  def index
  end

  def show


  end

  def create
    password=  params['password'].to_s

    cracker = PasswordCrack::Cracker.new

    result = cracker.check_is_week password

    if !result
      result =  '密码看上去是强壮的,因为从我们现有的字典里没发现这样的密码.'
    else

      result =  "密码属于弱密码,因为在字典<#{result}>中被发现"
    end

    render :json=>{'result'=>result}
  end
end
