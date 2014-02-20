ROWS = 3
COLS = 2
 
class AppDelegate
    # Properties
  
  def controller
    @controller ||= ExampleController.new
  end

  def window
    @window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    window.rootViewController = controller
    window.makeKeyAndVisible
    true
  end
end
