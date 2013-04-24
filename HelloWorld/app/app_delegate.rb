class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    alert = UIAlertView.alloc.initWithTitle('Hello, world!', message:'Welcome to RubyMotion!!', delegate:self, cancelButtonTitle:nil, otherButtonTitles:'OK', nil)
    alert.show
    true
  end
end
