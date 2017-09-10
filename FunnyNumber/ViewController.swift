//
//  ViewController.swift
//  FunnyNumber
//
//  Created by Sunisa Kirtsopa on 9/10/2560 BE.
//  Copyright © 2560 oramon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Explicit 
    var numberAInt: Int = 1
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decButtom(_ sender: Any) {
        print("Click DEC")
        let ungClass = MyClass()
        numberAInt = ungClass.decNumber(intNumber: numberAInt)
        numberLabel.text = String(numberAInt)
    }
    
    @IBAction func incButtom(_ sender: Any) {
        print("Click INC")
        numberAInt = addNumber(intNumber: numberAInt)
        numberLabel.text = String(describing: numberAInt)
        
    }
    
    
    
    @IBAction func resetInt(_ sender: Any) {
        print("Current Value ==> \(numberAInt)")
        numberAInt = oneNumber();       numberLabel.text = String(describing: numberAInt)
    }
    
    func oneNumber() -> Int{
        numberAInt = 1
        return numberAInt
    }
    
    // Function Add Number
    
    func addNumber(intNumber: Int) -> Int {
        let result = intNumber + 1
        return result
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

