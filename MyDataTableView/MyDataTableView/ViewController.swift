//
//  ViewController.swift
//  MyDataTableView
//
//  Created by Bhautik Dudhat on 08/02/23.
//



//override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {

//if let audioPlayerVC = presentedViewController as? AudioPlayerViewController {
//    audioPlayerVC.stopAudio()
//}

//super.dismiss(animated: flag, completion: completion)
//}



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
    
/*
 this is myBranch code
 func stopAudio() {
         player?.stop()
         player = nil
         timer?.invalidate()
         timer = nil
     }
 */

}

/*
 this is myBranch code
 @IBAction func sliderAction(_ sender: Any) {
         if let player = player {
             player.stop()
             player.currentTime = TimeInterval(musicSlider.value)
             player.prepareToPlay()
             player.play()
         }
     }
 */


extension ViewController {
    
//    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
//            if let audioPlayerVC = presentedViewController as? AudioPlayerViewController {
//                audioPlayerVC.stopAudio()
//            }
//            super.dismiss(animated: flag, completion: completion)
//        }
    
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



