//
//  ViewController.swift
//  CoolCars
//
//  Created by Jadson on 4/11/21.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var carImg: UIImageView!
    @IBOutlet weak var carPrice: UILabel!
    @IBOutlet weak var carSpeed: UILabel!
    @IBOutlet weak var carFuel: UILabel!
    @IBOutlet weak var carTransmission: UILabel!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var carModel: UILabel!
   
    var imgName = ""
    var name = ""
    var model = ""
    var price = ""
    var speed = ""
    var fuel = ""
    var transmission = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        carImg.image = UIImage(imageLiteralResourceName: imgName)
        carName.text = name
        carModel.text = model
        carPrice.text = price
        carSpeed.text = speed
        carFuel.text = fuel
        carTransmission.text = transmission
    }
    


}

