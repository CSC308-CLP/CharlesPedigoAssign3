//
//  DetailViewController.swift
//  CharlesPedigoAssign3
//
//  Created by Pedigo, Charles L. on 3/4/26.
//

import UIKit

class DetailViewController: UIViewController {

    //Detail View Controller Elements
    @IBOutlet weak var detailViewLabel: UILabel!
    @IBOutlet weak var detailViewImage: UIImageView!
    @IBOutlet weak var detailViewDesc: UILabel!
    
    //Uses pizza as default
    var receivedTitle: String = "Pizza"
    var receivedImage: String = "pizza"
    var receivedDesc: String = "Pizza is a dish of Italian origin, typically consisting of a flatbread topped with tomato sauce, mozzarella cheese, and various other ingredients such as pepperoni, mushrooms, bell peppers, olives, onions, and oregano."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailViewLabel.text = receivedTitle
        detailViewImage.image = UIImage(named: receivedImage)
        detailViewDesc.text = receivedDesc
        
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
