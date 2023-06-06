//
//  ViewController.swift
//  MyDataTableView
//
//  Created by Bhautik Dudhat on 08/02/23.
//

/*

AVAudioPlayer Functionality

class AudioPlayerViewController: UIViewController {

    @IBOutlet weak var playButtonView: UIView!
    var player: AVAudioPlayer?
    var timer: Timer?

    @IBOutlet weak var musicSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playButtonView.layer.cornerRadius = playButtonView.frame.height / 2

        do {
            let audioURL = Bundle.main.url(forResource: "lofi-study-112191", withExtension: "mp3")
            player = try AVAudioPlayer(contentsOf: audioURL!)
            player?.prepareToPlay()
            player?.delegate = self

            // Schedule a timer to update the slider value
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateSliderValue), userInfo: nil, repeats: true)
        } catch let error {
            print("Failed to create AVAudioPlayer: \(error.localizedDescription)")
        }
    }
*/

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
/*
override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        stopAudio()
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
   

    /*
    
     override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        stopAudio()
    }

    */
}



