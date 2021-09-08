//
//  ViewController.swift
//  Cool_Cars
//
//  Created by Carlos Cardoso on 8/26/21.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var car1Img: UIImageView!
    @IBOutlet weak var make1Lbl: UILabel!
    @IBOutlet weak var yearAndModel1Lbl: UILabel!
    
    @IBOutlet weak var car2Img: UIImageView!
    @IBOutlet weak var make2Lbl: UILabel!
    @IBOutlet weak var yearAndModel2Lbl: UILabel!
    
    @IBOutlet weak var car3Img: UIImageView!
    @IBOutlet weak var make3Lbl: UILabel!
    @IBOutlet weak var yearAndModel3Lbl: UILabel!
    
    @IBOutlet weak var car4Img: UIImageView!
    @IBOutlet weak var make4Lbl: UILabel!
    @IBOutlet weak var yearAndModel4Lbl: UILabel!
    
    @IBOutlet weak var car5Img: UIImageView!
    @IBOutlet weak var make5Lbl: UILabel!
    @IBOutlet weak var yearAndModel5Lbl: UILabel!
    
    @IBOutlet weak var car6Img: UIImageView!
    @IBOutlet weak var make6Lbl: UILabel!
    @IBOutlet weak var yearAndModel6Lbl: UILabel!
    
    var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        car1Img.image = UIImage(named: "march")
        make1Lbl.text = "Nissan"
        yearAndModel1Lbl.text = "2018 - March"
        
        car2Img.image = UIImage(named: "versa")
        make2Lbl.text = "Nissan"
        yearAndModel2Lbl.text = "2021 - Versa"
        
        car3Img.image = UIImage(named: "corolla")
        make3Lbl.text = "Toyota"
        yearAndModel3Lbl.text = "2007 - Corolla"
        
        car4Img.image = UIImage(named: "camry_2")
        make4Lbl.text = "Toyota"
        yearAndModel4Lbl.text = "2013 - Camry"
        
        car5Img.image = UIImage(named: "accord")
        make5Lbl.text = "Honda"
        yearAndModel5Lbl.text = "2017 - Accord"
        
        car6Img.image = UIImage(named: "civic")
        make6Lbl.text = "Honda"
        yearAndModel6Lbl.text = "2020 - Civic"
        
        car = Car()
    }
    
    @IBAction func unwindFromDetailVC(unwindSegue: UIStoryboardSegue){
        
    }

    @IBAction func car1OnTapped(_ sender: Any) {
        car = setSelectedCar(image: "march", make: "Nissan", year: "2018", model: "March", color: "White", transmition: "Manual", milage: "60,000")
        performSegue(withIdentifier: "detailVCSegue", sender: self)
        
    }
    @IBAction func car2OnTapped(_ sender: Any) {
        car = setSelectedCar(image: "versa", make: "Nissan", year: "2021", model: "Versa", color: "Red", transmition: "Automatic", milage: "50")
        performSegue(withIdentifier: "detailVCSegue", sender: self)
    }
    @IBAction func car3OnTapped(_ sender: Any) {
        car = setSelectedCar(image: "corolla", make: "Toyota", year: "2007", model: "Corolla", color: "Black", transmition: "Automatic", milage: "150,000")
        performSegue(withIdentifier: "detailVCSegue", sender: self)
    }
    @IBAction func car4OnTapped(_ sender: Any) {
        car = setSelectedCar(image: "camry_2", make: "Toyota", year: "2013", model: "Camry", color: "Light Blue", transmition: "Automatic", milage: "110,000")
        performSegue(withIdentifier: "detailVCSegue", sender: self)
    }
    @IBAction func car5OnTapped(_ sender: Any) {
        car = setSelectedCar(image: "accord", make: "Honda", year: "2017", model: "Accord", color: "White", transmition: "Manual", milage: "70,000")
        performSegue(withIdentifier: "detailVCSegue", sender: self)
    }
    @IBAction func car6OnTapped(_ sender: Any) {
        car = setSelectedCar(image: "civic", make: "Honda", year: "2020", model: "Civic", color: "White", transmition: "Automatic", milage: "90,000")
        performSegue(withIdentifier: "detailVCSegue", sender: self)
    }
    
    func setSelectedCar(image: String, make: String, year: String, model: String, color: String, transmition: String, milage: String) -> Car {
        
        var car = Car()
        car.image = image
        car.make = make
        car.year = year
        car.model = model
        car.color = color
        car.transmition = transmition
        car.milage = milage
        
        return car
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailVC {
            detailVC.car = car
        }
    }
}

