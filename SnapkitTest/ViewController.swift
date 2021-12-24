//
//  ViewController.swift
//  SnapkitTest
//
//  Created by kimsian on 2021/12/06.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let nameLabel = UILabel()
    let nameTextField = UITextField()
    let changeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpValue()
        setUpView()
        setConstraints()
    }
    
    func setUpValue() {
        nameLabel.text = "Label"
        nameTextField.backgroundColor = .gray
        changeButton.backgroundColor = .blue
    }
  
    func setUpView() {
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        view.addSubview(changeButton)
    }
    
    func setConstraints() {
        changeButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.leading.equalToSuperview().offset(24)
            make.trailing.equalToSuperview().offset(-24)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(24)
            make.leading.trailing.equalTo(nameLabel)
        }
    }
}
