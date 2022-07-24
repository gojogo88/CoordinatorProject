//
//  FirstViewController.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import UIKit

class FirstViewController: UIViewController {

    var infoLabel: UILabel?
    var viewModel: FirstTabViewModel!
    var showDetailRequested: () -> Void = { }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        setupInfoLabel()
        setupDetailbutton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        infoLabel?.text = "\(viewModel.name) with email \(viewModel.email)"
    }
    
    func setupDetailbutton() {
        let button = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 60))
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitle("Go to Detail", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    func setupInfoLabel() {
        let info = UILabel(frame: CGRect(x: 100, y: 300, width: 300, height: 60))
        self.view.addSubview(info)
        self.infoLabel = info
    }
    
    @objc
    func buttonAction() {
        showDetailRequested()
    }
}
