require 'password_crack'
class Md5crackController < ApplicationController


  def index
   end

  def show


  end

  def create
    md5=  params['md5'].to_s

   if(md5 =='d41d8cd98f00b204e9800998ecf8427e')
      result = 'result is empty!!!do you know empty?'
   else
     cracker = PasswordCrack::Md5Cracker.new

     result =  cracker.crack md5 ,'week_password_sample'



     result =  cracker.crack md5 ,'birthday' if !result


     result = 'password is tooooo strong!' if !result
   end



    render :json=>{'result'=>result}
  end
end
