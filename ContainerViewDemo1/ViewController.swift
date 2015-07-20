//
//  ViewController.swift
//  ContainerViewDemo1
//
//  Created by qingjiezhao on 7/20/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var popularView: UIView!
    @IBOutlet weak var historyView: UIView!
    
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            NSLog("Popular selected")
            //show popular view
            popularView.hidden = false
            historyView.hidden = true
        case 1:
            NSLog("History selected")
            //show history view
            popularView.hidden = true
            historyView.hidden = false
        default:
            break;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        popularView.hidden = false
        historyView.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

