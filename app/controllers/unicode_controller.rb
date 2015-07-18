class UnicodeController < ApplicationController
  def create

    weight =params['weight']
    height =params['height']

    if(!height.numeric? || !weight.numeric?)
      result =  'Height and weight must be number!!!'
    elsif
    i =weight.to_f /  (height.to_f / 100) ** 2

      if( i<18.5 )
        f1 = '*'

      elsif(i >=18.5 && i<24 )
        f2 = '*'

      elsif(i >=24 && i<27 )
        f3 = '*'
      elsif  (i >=27 && i<30 )
        f4 = '*'
      elsif  (i >=30 && i<35 )
        f5 = '*'
      elsif  (i >=35  )
        f6 = '*'
      end

      a = "
==========================
#{f1}      BMI <=18.4  偏瘦
#{f2} 18.5 ≦BMI ＜24  正常
#{f3} 24 ≦ BMI ＜27  过重
#{f4} 27 ≦ BMI ＜30  轻度肥胖
#{f5} 30 ≦ BMI ＜35  中度肥胖
#{f6}      BMI  ≧35  重度肥胖
"




      result = '测算结果:'+i.to_s + a

    end




    render :json=>{'result'=> result}

  end

end
