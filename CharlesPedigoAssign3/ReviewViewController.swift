//
//  ReviewViewController.swift
//  CharlesPedigoAssign3
//
//  Created by Pedigo, Charles L. on 3/4/26.
//

import UIKit

class ReviewViewController: UIViewController {

    var noStars = true
    var hasRated = false
    
    //Review View Controller Elements
    
    @IBOutlet var starButtons: [UIButton]!
    
    @IBAction func starTapped(_ sender: UIButton) {
        updateStars(tag: sender.tag)
    }
    
    @IBOutlet weak var reviewRatingLabel: UILabel!
    
    @IBAction func reviewSubmitButton(_ sender: UIButton) {
        if noStars {
            showAlert(message: "Please tap a star to rate before submitting")
        }else{ //Process and send
            
        }
    }
    
    func showAlert(message: String){
        let alert = UIAlertController(title: "No Rating Selected", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func updateStars(tag: Int) {
        for button in starButtons { //Reset to nothing
            button.setTitle("☆", for: .normal)
        }
        for i in 0..<tag {
            starButtons[i].setTitle("★", for: .normal)
        }
        reviewRatingLabel.text = "\(tag)/5"
        noStars = false
        hasRated = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ViewController{
            if hasRated{
                dest.receivedRating = reviewRatingLabel.text!
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in starButtons {
            button.setTitle("☆", for: .normal)
        }
        noStars = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
