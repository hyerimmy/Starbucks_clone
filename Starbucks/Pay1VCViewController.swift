//
//  Pay1VCViewController.swift
//  Starbucks
//
//  Created by 황혜림 on 2022/07/12.
//

import UIKit

class Pay1VCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var segueTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Pay2VC {
            let vc = segue.destination as? Pay2VC
            vc?.text = self.segueTextField.text ?? ""
        }
    }

}
