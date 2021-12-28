//
//  ViewController.swift
//  goGreen2021-2022
//
//  Created by Keshav Singh on 12/26/21.
//

import UIKit
var name = ""
var state = ""
var people = ""
var sceneManager = 0
var sm = 0
var user = [""]
class ViewController: UIViewController {
    @IBOutlet weak var nameTextView: UITextView!
    
    @IBOutlet weak var utilitiesButton: UIButton!
    @IBOutlet weak var transportationButton: UIButton!
    @IBOutlet weak var industryButton: UIButton!
    @IBOutlet weak var introductionTextTop: UILabel!
    @IBOutlet weak var signUpText: UILabel!
    @IBOutlet weak var peopleLabelText: UILabel!
    @IBOutlet weak var peopleTextView: UITextView!
    @IBOutlet weak var stateTextView: UITextView!
    @IBOutlet weak var goGreenTitle: UILabel!
    @IBOutlet weak var signUpBackground: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var stateLabelText: UILabel!
    @IBOutlet weak var nameLabelText: UILabel!
    @IBOutlet weak var earthIcon: UIImageView!
    @IBOutlet weak var lineBackground: UIImageView!
    @IBOutlet weak var introductionTextBottom: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        introductionTextTop.isHidden = true
        introductionTextBottom.isHidden = true
        earthIcon.isHidden = true
        utilitiesButton.isHidden = true
        industryButton.isHidden = true
        transportationButton.isHidden = true
    }

    @IBAction func utilitiesClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "utilitiesScene", sender: self)
        
    }
    @IBAction func signUpClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextView.text, forKey: "name")
        UserDefaults.standard.set(peopleTextView.text, forKey: "people")
        UserDefaults.standard.set(stateTextView.text, forKey: "state")
        nameTextView.isHidden = true
        signUpBackground.isHidden = true
        lineBackground.isHidden = true
        nameLabelText.isHidden = true
        peopleTextView.isHidden = true
        signUpText.isHidden = true
        stateLabelText.isHidden = true
        peopleLabelText.isHidden = true
        stateTextView.isHidden = true
        goGreenTitle.isHidden = true
        name = (UserDefaults.standard.object(forKey: "name") as? String)!
        state = (UserDefaults.standard.object(forKey: "state") as? String)!
        people = (UserDefaults.standard.object(forKey: "people") as? String)!
        sceneManager += 1
        if sceneManager == 1 {
        introductionTextTop.isHidden = false
            introductionTextTop.text = "Hi \(name), let’s start your journey towards environmental cleanliness."
            earthIcon.isHidden = false
            introductionTextBottom.isHidden = false
            
            
        }
        
        if sceneManager == 2 {
            user.insert(name, at: 0)
            user.insert(state, at: 1)
            user.insert(people, at: 2)
            earthIcon.isHidden = true
            introductionTextBottom.isHidden = true
            introductionTextTop.text = "Let's start \n(choose one)"
            signUpButton.isHidden = true
            
            utilitiesButton.isHidden = false
            industryButton.isHidden = false
            transportationButton.isHidden = false
        }
    }
    
}

