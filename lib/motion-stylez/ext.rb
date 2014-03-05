class Object
  def z(selector = nil, style = nil, &block)
    MotionStylez::Base.shared.selector = selector
    if selector && style
      MotionStylez::Base.shared.style(style, &block)
    else
      MotionStylez::Base.shared
    end
  end
end