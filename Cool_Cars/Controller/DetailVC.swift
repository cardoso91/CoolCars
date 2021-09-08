//
//  DetailVC.swift
//  Cool_Cars
//
//  Created by Carlos Cardoso on 8/27/21.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var carImg: UIImageView!
    @IBOutlet weak var makeLbl: UILabel!
    @IBOutlet weak var yearAndModelLbl: UILabel!
    @IBOutlet weak var colorLbl: UILabel!
    @IBOutlet weak var transmitionLbl: UILabel!
    @IBOutlet weak var milageLbl: UILabel!
    
    
    var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        carImg.image = UIImage(named: car.image)
        makeLbl.text = car.make
        yearAndModelLbl.text = car.yearAndModel
        colorLbl.text = car.color
        transmitionLbl.text = car.transmition
        milageLbl.text = car.milage
        
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
