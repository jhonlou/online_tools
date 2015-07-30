require 'rubygems'
require 'rqrcode'
class QrcodeController < ApplicationController


  def index

    if params['t']

      qr = RQRCode::QRCode.new(params['t'])

      render :body=>qr.as_png
    end

  end

  def show

  end

  def create

  #  result =


  end

end
