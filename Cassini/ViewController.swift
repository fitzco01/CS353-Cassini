//
//  ViewController.swift
//  Cassini
//
//  Created by Connor Fitzpatrick on 3/30/16.
//  Copyright © 2016 Connor Fitzpatrick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "Luther":
                    ivc.imageURL = DemoURL.Luther
                    ivc.title = "Luther"
                    case "Earth":
                    ivc.imageURL = DemoURL.NASA.Earth
                    ivc.title = "Earth"
                    case "Saturn":
                    ivc.imageURL = DemoURL.NASA.Saturn
                    ivc.title = "Saturn"
                    case "Cassini":
                    ivc.imageURL = DemoURL.NASA.Cassini
                    ivc.title = "Cassini"
                default: break
                }
            }
        }
    }

}

