//
//  ViewController.swift
//  MVoniesPracticle
//
//  Created by Disha on 16/01/24.
//

import UIKit

enum tableSection {
case frist, secound, third
}

class ViewController: UIViewController {

    
    //MARK: - OUTLETS
    
    @IBOutlet weak var detailsTableView: UITableView!
    
    //MARK: - VARIABLES
    
    var arrTableSection: [tableSection] = [.frist, .secound, .third]
    
    //MARK: - METHODS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialDetails()
        // Do any additional setup after loading the view.
    }
    //MARK: - FUNCTIONS
    
    func initialDetails() {
        self.detailsTableView.register(UINib(nibName: "FirstCell", bundle: nil), forCellReuseIdentifier: "FirstCell")
        self.detailsTableView.register(UINib(nibName: "MiddleCell", bundle: nil), forCellReuseIdentifier: "MiddleCell")
        self.detailsTableView.register(UINib(nibName: "LastCell", bundle: nil), forCellReuseIdentifier: "LastCell")
    }
    
    //MARK: - ACTIONS

}
//MARK: - DELEGATE METHODS
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch self.arrTableSection[indexPath.section] {
            
        case .frist:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as! FirstCell
            return cell
        case .secound:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MiddleCell", for: indexPath) as! MiddleCell
            return cell
        case .third:
            let cell = tableView.dequeueReusableCell(withIdentifier: "LastCell", for: indexPath) as! LastCell
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

