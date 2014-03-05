class Object
  def z(selector = nil)
    MotionStylez::Base.shared.selector = selector
    MotionStylez::Base.shared
  end
end