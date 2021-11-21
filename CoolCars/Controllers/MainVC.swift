//
//  Mainvc.swift
//  CoolCars
//
//  Created by Jadson on 4/11/21.
//

import UIKit

class MainVC: UITableViewController {
    
    var carModel: [CarsModel] = [
        CarsModel(image: "mercedes-benz-gla-2020", name: "Mercedes-Benz", model: "2020 - GLA 250", price: "95899.99", speed: "225", fuel: "Petrol", transmission: "Automatic"),
        CarsModel(image: "2019-tesla-model-s", name: "Tesla", model: "2019 - Model S", price: "139995.00", speed: "322"
             , fuel: "Eletric", transmission: "Automatic"),
        CarsModel(image: "Lambo", name: "Lamborghini", model: "2019 - Aventador", price: "575000.00", speed: "355", fuel: "Petrol", transmission: "Automatic")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.rowHeight = 250.0
        title = K.appName
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return carModel.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! CarCell
        
        
        let cars = carModel[indexPath.row]
        cell.name.text = cars.name
        cell.carImage.image = UIImage(imageLiteralResourceName: cars.image)
        cell.model.text = cars.model
        
        return cell
    }
    

    //MARK: - Table View Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: K.registerSegue, sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailsVC
        

        if let indexPath = tableView.indexPathForSelectedRow {
            let car = carModel[indexPath.row]
            

            destinationVC.imgName = car.image
            destinationVC.name = car.name
            destinationVC.model = car.model
            destinationVC.price = car.price
            destinationVC.fuel = car.fuel
            destinationVC.transmission = car.transmission
            destinationVC.speed = car.speed
            
        }
    }
}

