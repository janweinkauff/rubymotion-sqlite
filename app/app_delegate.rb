class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    $debug = true
    
    w = Wordlist.new
    w.createTable
    w.insert_data("Shweta")
    w.insert_data("Sampoorna")
    w.insert_data("Senthil")
    log w.find(:all)
    
    true
  end
end
