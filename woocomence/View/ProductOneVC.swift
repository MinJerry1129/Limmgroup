//
//  ProductOneVC.swift
//  woocomence
//
//  Created by Admin on 8/21/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
import Cosmos
class ProductOneVC: UIViewController {

    @IBOutlet weak var txtProTitle: UILabel!
    
    @IBOutlet weak var txtProPer: UILabel!
    @IBOutlet weak var txtProOldValue: UILabel!
    @IBOutlet weak var txtProValue: UILabel!
    
    @IBOutlet weak var proRating: CosmosView!
    @IBOutlet weak var txtReview: UILabel!
    @IBOutlet weak var txtAnswer: UILabel!
    
    @IBOutlet weak var txtProDescription: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        proRating.settings.fillMode = .precise
        proRating.rating = 4.3       
    }
    
    @IBAction func openManualBtn(_ sender: Any) {
    }
    
    @IBAction func openVideoBtn(_ sender: Any) {
    }
    
    @IBAction func openWeb(_ sender: Any) {
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
