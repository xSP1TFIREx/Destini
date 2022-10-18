import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func choiseMade(_ sender: UIButton) {
        nextStory(sender.currentTitle!)
        updateUI()
        
    }
    
    func updateUI() {
        storyLabel.text = story.title[currentCounter]
        choice1Button.setTitle(story.choice1[currentCounter], for: .normal)
        choice2Button.setTitle(story.choice2[currentCounter], for: .normal)

    }
    
}


