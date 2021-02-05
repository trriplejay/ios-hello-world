//
//  ViewController.swift
//  HelloWorld
//
//  Created by Taylor Lea on 1/28/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let title = NSAttributedString(string: "Hello", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        let message = NSAttributedString(string: "World", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        let alertController = UIAlertController(title: "", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.setValue(message, forKey: "attributedMessage")
        alertController.setValue(title, forKey: "attributedTitle")
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        let subview = (alertController.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
        let JFROGGreen = UIColor(red: (65/255.0), green: (191/255.0), blue: (71/255.0), alpha: 1.0)
        alertController.view.tintColor = UIColor.white
    
        subview.backgroundColor = JFROGGreen
    }

}
