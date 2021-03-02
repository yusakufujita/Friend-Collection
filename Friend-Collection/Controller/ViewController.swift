//
//  ViewController.swift
//  Friend-Collection
//
//  Created by 藤田優作 on 2021/02/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friend Collection"
        self.navigationController?.navigationBar.barTintColor = .green
        
        
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")        // Do any additional setup after loading the view.
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell {
            
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
    
    
    
    
}

