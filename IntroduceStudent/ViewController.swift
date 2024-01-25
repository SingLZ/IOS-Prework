//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Lixing Zheng on 1/24/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var colorButton: UIButton!
    @IBAction func tapToChangeColor(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {
                sender.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            }) { _ in
                UIView.animate(withDuration: 0.2) {
                    sender.transform = CGAffineTransform.identity
                }
            }
        
        let randomColor = UIColor(
                    red: CGFloat(drand48()),
                    green: CGFloat(drand48()),
                    blue: CGFloat(drand48()),
                    alpha: 1.0
                )

                // Set the background color to the random color
                view.backgroundColor = randomColor
            }

    
    
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, animations: {
                sender.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            }) { _ in
                UIView.animate(withDuration: 0.2) {
                    sender.transform = CGAffineTransform.identity
                }
            }
        
        // Lets us choose the title we have selected from the segmented control
                // In our example that is whether it is first, second, third or forth
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

                // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
                let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!), I go by Sing and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets especially dogs"

        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)

                present(alertController, animated: true, completion: nil)
    
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

