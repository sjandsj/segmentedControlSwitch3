//
//  ViewController.swift
//  segmentedControl3
//
//  Created by mac on 10/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmantControllerOutlet: UISegmentedControl!
    @IBOutlet weak var viewContainer: UIView!
    
    var view1: UIView!
    var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1 = firstViewViewController().view
        view2 = secondViewController().view
        viewContainer.addSubview(view2)
        viewContainer.addSubview(view1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func segmentControlSwitch(_ sender: UISegmentedControl) {
        if (segmantControllerOutlet.selectedSegmentIndex == 0) {
            viewContainer.bringSubview(toFront: view1)
            }
        if (segmantControllerOutlet.selectedSegmentIndex == 1) {
            viewContainer.bringSubview(toFront: view2)
        }
    }
}
    


