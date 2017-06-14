//
//  ViewController.swift
//  ICAppBrowser
//
//  Created by Arief Budi Santoso on 06/09/2017.
//  Copyright (c) 2017 Arief Budi Santoso. All rights reserved.
//

import UIKit
import ICAppBrowser

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Push
    @IBAction func push() {
        
        let webVC = ICAppBrowserVC(urlString: "https://www.google.com")
        webVC.delegate = self
        self.navigationController?.pushViewController(webVC, animated: true)
    }
    
    // MARK: Modal
    @IBAction func presentModalWithDefaultTheme() {

        //Example 1
//        let webVC = ICAppBrowserModalVC(urlString: "https://www.google.com")
//        self.present(webVC, animated: true, completion: nil)
        
        // Example 2
//        let webVC = ICAppBrowserModalVC(urlString: "https://www.google.com", theme: .lightBlack, dismissButtonStyle: .cross)
//        self.present(webVC, animated: true, completion: nil)
        
        // Example 3
        let webVC = ICAppBrowserModalVC(urlString: "https://www.google.com", theme: .dark, dismissButtonStyle: .arrow)
        self.present(webVC, animated: true, completion: nil)
        
    }
    
}

extension ViewController: ICBrowserVCDelegate {
    func didStartLoading() {
        print("started")
    }
    
    func didFinishLoading(success: Bool) {
        print("Finish")
    }
}
