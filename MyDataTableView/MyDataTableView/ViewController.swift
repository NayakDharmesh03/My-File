//
//  ViewController.swift
//  MyDataTableView
//
//  Created by Bhautik Dudhat on 08/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTf: UITextField!
    @IBOutlet weak var MyTableView: UITableView!
    
    @IBOutlet weak var addBtn: UIButton!
    
    var students:[String] = ["Dharmesh"]
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func addItem(_ sender: UIButton) {
        
        guard let student = inputTf.text else {
            return
        }
        students.append(student)
        MyTableView.reloadData()
        inputTf.text = ""
    }
    

}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.textLabel?.text = students[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            
            students.remove(at: indexPath.row)
            MyTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    
}

//Repositories: A repository, or "repo" for short, is a collection of files and folders that make up a project. Repositories can be either public, accessible to anyone, or private, accessible only to authorized individuals.
