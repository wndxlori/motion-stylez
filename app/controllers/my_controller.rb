class MyViewController < UIViewController
  def viewDidLoad
    super
 
    z.stylesheet = MyStylesheet.new # works absolutely anywhere
 
    z(self.view).style(:white_bg)
 
    self.view.addSubview(z(UILabel).style(:bw_big) do |v|
      v.text = "Testing"
    end)
 
  end
end