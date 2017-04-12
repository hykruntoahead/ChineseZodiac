//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by 何育昆 on 2017/4/12.
//  Copyright © 2017年 何育昆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var yearEdit: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    let offset = -9;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearEdit.resignFirstResponder();
    }
    
    @IBAction func okTapped(_ sender: Any) {
        if let year = Int(yearEdit.text!){
            
            let imageNumber = (year - offset)%12
            image.image = UIImage(named: String(imageNumber));
        }
        else{
            
        };
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

