//
//  ICWebActivity.swift
//  Pods
//
//  Created by Arief Budi Santoso on 6/9/17.
//
//

import UIKit

class ICWebActivity: UIActivity {
    
    var UrlToOpen: URL?
    var schemePref: String?
    
    override var activityType: UIActivityType? {
        let typeArray = "\(type(of: self))".components(separatedBy: ".")
        let type: String = typeArray[typeArray.count-1]
        return UIActivityType(rawValue: type)
    }
    
    //Get Activity Image
    override var activityImage: UIImage? {
        if let type = activityType?.rawValue {
            return ICAppBrowserVC.bundledImage(named: "\(type)")
        }else{
            assert(false, "Unknown Type of Image")
            return UIImage()
        }
    }
    
    //Prepare Activity
    override func prepare(withActivityItems activityItems: [Any]) {
        for activityItem in activityItems {
            if activityItem is URL {
                UrlToOpen = activityItem as? URL
            }
        }
    }
}
