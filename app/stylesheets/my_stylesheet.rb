class MyStylesheet
  def bw_big(v)
    v.backgroundColor = UIColor.blackColor
    v.textColor = UIColor.whiteColor
    v.font = UIFont.systemFontOfSize(36)
    v.textAlignment = UITextAlignmentCenter
  end

  def white_bg(v)
    v.backgroundColor = UIColor.whiteColor
  end

  def blue_bg(v)
    v.backgroundColor = UIColor.blueColor
  end
end