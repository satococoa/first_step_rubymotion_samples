class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    main_controller = UIViewController.new
    label = UILabel.new.tap do |l|
      l.frame = [[10, 40], [300, 40]]
      l.text = '下のボタンをタップしてください！'
    end
    main_controller.view.addSubview(label)
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |b|
      b.frame = [[10, 100], [300, 40]]
      b.setTitle('Hello!', forState:UIControlStateNormal)
      b.addTarget(self, action:'show_alert:', forControlEvents:UIControlEventTouchUpInside)
    end
    main_controller.view.addSubview(button)
    main_controller.view.backgroundColor = UIColor.whiteColor

    @window.rootViewController = main_controller
    @window.makeKeyAndVisible

    true
  end

  def show_alert(button)
    alert = UIAlertView.alloc.initWithTitle('Hello, world!', message:'Welcome to RubyMotion!!', delegate:self, cancelButtonTitle:nil, otherButtonTitles:'OK', nil)
    alert.show
  end
end
