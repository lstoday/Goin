
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scondDemo()
    }

    func scondDemo() {
        let myView = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        let time = getTime()
        myView.text = time
        //添加到根视图
        view.addSubview(myView)
        
        
    }
    
    func getTime() -> String {
        let date = Date()
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "yyy-MM-dd HH:mm:ss"
        return timeFormatter.string(from: date)
    }
    

}
