module ApplicationHelper

  #當若在view頁面需要有大量邏輯判斷時，就可以把其放到helper來，讓view的頁面輕量化，且看起來會比較具有邏輯和易讀
  def gender_display(gender)
    case gender
    when 1
      "男"
    when 2
      "女"
    else
      "其它"
    end
  end

  #也可將其改寫在User model下，變成一個@user的method，也可以將其程式碼簡化，兩種方式皆可以使用

end
