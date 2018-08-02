//
//  ViewController.swift
//  PageControl
//
//  Created by HoangLuyen on 8/2/18.
//  Copyright © 2018 HoangLuyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pageControl.currentPage = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.frame.width
        let currentPage: CGFloat = floor((scrollView.contentOffset.x - pageNumber/2)/pageNumber)+1
        pageControl.currentPage = Int(currentPage)
    }

}

