//
//  ViewController.swift
//  CharlesPedigoAssign3
//
//  Created by Pedigo, Charles L. on 2/27/26.
//

import UIKit

class ViewController: UIViewController {
    
    var isGalbi = false
    var isPizza = false
    var isBurger = false

    @IBAction func galbiButton(_ sender: UIButton) {
        isBurger = false
        isPizza = false
        isGalbi = true
        //detailViewLabel.text = "Galbi"
        //detailViewImage.image = UIImage(named: "galbi")
        //detailViewDesc.text = "Galbi is a Korean dish consisting of thinly sliced marinated beef grilled to perfection."
    }
    @IBOutlet weak var galbiButtonOutlet: UIButton!
    
    
    @IBAction func pizzaButton(_ sender: UIButton) {
        isPizza = true
        isGalbi = false
        isBurger = false
        //detailViewLabel.text = "Pizza"
        //detailViewImage.image = UIImage(named: "pizza")
        //detailViewDesc.text = "Pizza is a popular dish of Italian origin, typically consisting of a flatbread topped with tomato sauce, mozzarella cheese, and various other ingredients such as pepperoni, mushrooms, bell peppers, onions, olives, and pine nuts."
    }
    @IBOutlet weak var pizzaButtonOutlet: UIButton!
    
    
    @IBAction func hamburgerButton(_ sender: UIButton) {
        isGalbi = false
        isPizza = false
        isBurger = true
        //detailViewLabel.text = "Hamburger"
        //detailViewImage.image = UIImage(named: "hamburger")
        //detailViewDesc.text = "A hamburger is a sandwich typically consisting of a round bun, filled with ground beef, cheese, and various other ingredients such as lettuce, tomato, onion, pickles, and condiments like ketchup and mustard."
    }
    @IBOutlet weak var hamburgerButtonOutlet: UIButton!
    
    
    @IBAction func reviewButton(_ sender: Any) {
    }
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? DetailViewController{
            if isGalbi{
                dest.receivedTitle = "Galbi"
                dest.receivedImage = "galbi"
                dest.receivedDesc = "Galbi is a Korean dish consisting of thinly sliced marinated beef grilled to perfection."
            }else if isPizza{
                dest.receivedTitle = "Pizza"
                dest.receivedImage = "pizza"
                dest.receivedDesc = "Pizza is a savory dish consisting of a flattened disk of dough topped with various ingredients, such as tomato sauce, cheese, and meat."
            }else if isBurger{
                dest.receivedTitle = "Hamburger"
                dest.receivedImage = "burger"
                dest.receivedDesc = "Hamburgers are a type of fast food consisting of a round bun, typically filled with ground beef, cheese, and various condiments."
            }else{
                dest.receivedTitle = "Pizza"
                dest.receivedImage = "galbi"
                dest.receivedDesc = "Pizza is a savory dish consisting of a flattened disk of dough topped with various ingredients, such as tomato sauce, cheese, and meat."
            }
        }
    }
    
    @IBAction func unwindSegue(_ prepare: UIStoryboardSegue){
        //Used for unwinding Review Submit Button
        ratingLabel.text = "Your rating: "+receivedRating
    }
    
    var receivedRating: String = "-/5"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round Recipe Book Menu Buttons
        guard let galbiVisual = galbiButtonOutlet else {
            return
        }
        galbiVisual.layer.cornerRadius = 20
        guard let pizzaVisual = pizzaButtonOutlet else {
            return
        }
        pizzaVisual.layer.cornerRadius = 20
        guard let hamburgerVisual = hamburgerButtonOutlet else {
            return
        }
        hamburgerVisual.layer.cornerRadius = 20
        
        
        
    }


}

