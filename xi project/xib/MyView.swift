//
//  MyView.swift
//  xi project
//
//  Created by Admin on 15.01.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class MyView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var alertView: UIView!
    
    var view: UIView!
    var nibName: String = "MyView"

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupAlertView()

        
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        setupAlertView()
    }
    
    func setup() {
        Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    func setupAlertView() {
        alertView.layer.cornerRadius = 10
        alertView.layer.shadowColor = UIColor.black.cgColor
        alertView.layer.shadowOffset = CGSize(width: 0.5, height: 0.4)
        alertView.layer.shadowOpacity = 0.2
        alertView.layer.shadowRadius = 10.0
        alertView.layer.masksToBounds =  false
        alertView.layer.shadowPath = UIBezierPath(rect: alertView.bounds).cgPath
    }

    
    
    @IBAction func closeAction(_ sender: UIButton) {
        self.isHidden = true
        
    }
}
