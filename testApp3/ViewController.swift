//
//  ViewController.swift
//  testApp3
//
//  Created by Artem Paklinov on 18.12.2019.
//  Copyright © 2019 Artem Paklinov. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var ligthOn = true
    
    @IBAction func pushOnLight(_ sender: UIButton) {
        ligthOn = !ligthOn
        updateView()

    }
    
    func updateView() {
        let device = AVCaptureDevice.default(for: .video)
        if let dev = device, dev.hasTorch {
            view.backgroundColor = UIColor.black
            do {
                try dev.lockForConfiguration()
                dev.torchMode = ligthOn ? .on : .off
                dev.unlockForConfiguration()
            } catch {
                print(error)
            }
        } else {
            view.backgroundColor = ligthOn ? .white : .black
        }
    }
    
    
    
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

