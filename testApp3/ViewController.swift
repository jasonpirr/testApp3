//
//  ViewController.swift
//  testApp3
//
//  Created by Artem Paklinov on 18.12.2019.
//  Copyright © 2019 Artem Paklinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func actButton(_ sender: UIButton) {
        myLabel.text = "Была нажата кнопка"
        
    }
    
    @IBAction func upButton(_ sender: UIButton) {
        myLabel.text = "Кнопка не нажата"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.setTitle("Привет", for: .normal)
        myButton.setTitleColor(.red, for: .normal)
        let label = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 40))
        label.text = "Создано программно"
        view.addSubview(label)
    }


}

