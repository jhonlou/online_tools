
class Md5Controller < ApplicationController


  def index
   end

  def show

  end

  def create

    result = Digest::MD5.hexdigest(params['str'].to_s)
    render :json=>{'result'=>result}
  end
end
