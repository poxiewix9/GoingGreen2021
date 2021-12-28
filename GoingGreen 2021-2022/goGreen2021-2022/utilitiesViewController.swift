//
//  utilitiesViewController.swift
//  goGreen2021-2022
//
//  Created by Neetu Singh on 12/27/21.
//

import UIKit
var progress = 0.33
class utilitiesViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    
    private let progressView: UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.trackTintColor = .gray
        progressView.progressTintColor = .systemBlue
        return progressView
    }()
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        progress += 0.33
        progressView.setProgress(Float(progress), animated: false)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(progressView)
        progressView.frame = CGRect(x:10, y:100, width: view.frame.size.width-20, height :20)
        progressView.setProgress(0, animated: false)
    }
    
        }
        






