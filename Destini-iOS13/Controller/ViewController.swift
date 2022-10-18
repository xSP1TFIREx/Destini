import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
   var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func choiseMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTheStory()
        choice1Button.setTitle(storyBrain.getTheButton1(), for: .normal)
        choice2Button.setTitle(storyBrain.getTheButton2(), for: .normal)

    }
    
}


