//
//  ViewController.swift
//  MyDataTableView
//
//  Created by Bhautik Dudhat on 08/02/23.
//

import UIKit
//GitHub is a web-based platform for version control and collaboration that allows developers to host, review, and manage code repositories.
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
    
//    You can temporarily save your changes without committing them to a branch by stashing the changes in GitHub Desktop.

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
   
//    To apply your changes to your repository, you must save the files and then commit the changes to a branch. If
    
    
}


//GitHub is a web-based platform for version control and collaboration that allows developers to host, review, and manage code repositories. It provides a centralized location for storing and managing source code, making it easier for teams to collaborate on projects.

