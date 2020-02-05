//
//  ProductVC.swift
//  woocomence
//
//  Created by Admin on 8/21/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
import Firebase
class ProductVC: UIViewController , UITableViewDelegate, UITableViewDataSource{
    var productoneVC: ProductOneVC!
    @IBOutlet weak var tableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
//        let rootRef = Database.database().reference()
//        let itemsRef = rootRef.child("product")
//        itemsRef.child("image").setValue("image123")
        
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
        searchController.searchBar.tintColor = UIColor.white
        searchController.searchBar.barTintColor = UIColor.init(red: 40/255, green: 125/255, blue: 56/255, alpha: 1)
        
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: "cell"), for: indexPath) as! ProductCell
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")        
        productoneVC = self.storyboard?.instantiateViewController(withIdentifier: "productoneVC") as? ProductOneVC
        self.present(productoneVC, animated: true, completion: nil)
    }
    
}
extension ProductVC: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
       
    }
}
fileprivate func convertToUIApplicationOpenExternalURLOptionsKeyDictionary(_ input: [String: Any]) -> [UIApplication.OpenExternalURLOptionsKey: Any] {
    return Dictionary(uniqueKeysWithValues: input.map { key, value in (UIApplication.OpenExternalURLOptionsKey(rawValue: key), value)})
}
