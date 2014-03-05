class MyViewController < UIViewController
  def viewDidLoad
    super
 
    z.stylesheet = MyStylesheet.new # works absolutely anywhere
 
    z(self.view, :white_bg)
 
    self.view.addSubview(z(UILabel, :bw_big) do |v|
      v.text = "Testing"
    end)

    # OR YOU CAN DO THE LONG WAY
    # z(self.view).style(:white_bg)
    #
    # self.view.addSubview(z(UILabel).style(:bw_big) do |v|
    #   v.text = "Testing"
    # end)
 
  end
end