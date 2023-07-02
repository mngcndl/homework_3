//
//  ViewController.swift
//  homework_3
//  Created by Liubov Smirnova on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {
    let initials = UILabel()
    let circle = UIView()
    let nameLabel = UILabel()
    let nameView = UIView()
    let uniLabel = UILabel()
    let uniLabelView = UIView()
    let uniText = UITextView()
    let uniInfoView = UIView()
    let cityLabel = UILabel()
    let cityLabelView = UIView()
    let cityText = UITextView()
    let cityInfoView = UIView()
    let editButton1 = UIButton()
    let editButton2 = UIButton()
    let textChanger = UIAlertController()
    
    let updateAction = UIAlertAction(title: "OK", style: .default) { (_) in
        print("OK!")
    }
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
        print("Cancel!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        circle.frame = CGRect(origin: .init(x: self.view.frame.width * 0.15, y: self.view.frame.width * 0.15), size: CGSize(width: self.view.frame.width * 0.7, height: self.view.frame.width * 0.7))
        circle.backgroundColor = UIColor(red: 229/255, green: 229/255, blue: 233/255, alpha: 1.0)
        circle.layer.cornerRadius = circle.frame.height / 2
        circle.clipsToBounds = true
        
        initials.frame = CGRect(origin: .init(x: 0, y: 0), size: CGSize(width: self.circle.frame.width, height: self.circle.frame.height))
        initials.text = "NS"
        initials.textColor = .black
        initials.font = UIFont.boldSystemFont(ofSize: 120)
        
        circle.addSubview(initials)
        initials.textAlignment = .center
        view.addSubview(circle)
        
        nameView.frame = CGRect(origin: .init(x: self.view.frame.width * 0.1, y: self.view.frame.width * 0.9), size: CGSize(width: self.view.frame.width * 0.8, height: self.view.frame.width * 0.15))
        nameLabel.frame = CGRect(origin: .init(x: 0, y: 0), size: CGSize(width: nameView.frame.width, height: nameView.frame.height))
        nameLabel.text = "Nikita Sosyuk"
        nameLabel.font = UIFont.systemFont(ofSize: 22)
        nameLabel.textColor = .black
        nameLabel.textAlignment = .center
        nameView.backgroundColor = .clear
        nameView.addSubview(nameLabel)
        
        let thickness: CGFloat = 1.0
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x:0, y: nameView.frame.size.height - thickness, width: nameView.frame.size.width, height:thickness)
        bottomBorder.backgroundColor = UIColor.black.cgColor
        nameView.layer.addSublayer(bottomBorder)
        view.addSubview(nameView)
        
        uniLabelView.frame = CGRect(origin: .init(x: self.view.frame.width * 0.05, y: self.view.frame.width * 1.1), size: CGSize(width: self.view.frame.width, height: 20))
        uniLabel.frame = CGRect(origin: .init(x: 0, y: 0), size: CGSize(width: self.view.frame.width, height: 20))
        uniLabel.text = "University"
        uniLabel.font = UIFont.systemFont(ofSize: 13)
        uniLabel.textColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1.0)
        uniLabel.textAlignment = .left
        
        uniLabelView.backgroundColor = .clear
        uniLabelView.addSubview(uniLabel)
        uniLabelView.addSubview(uniLabel)
        view.addSubview(uniLabelView)
        
        uniInfoView.frame = CGRect(origin: .init(x: 0, y: self.view.frame.width * 1.1 + 20), size: CGSize(width: self.view.frame.width, height: 20))
        uniText.frame = CGRect(origin: .init(x: self.view.frame.width * 0.035, y: 0), size: CGSize(width: self.view.frame.width * 0.6, height: self.view.frame.width * 0.2))
        uniText.text = "Kazan Federal University\nInstitute of Information Technology and Intelligent Systems"
        uniText.isEditable = false
        uniInfoView.addSubview(uniText)
        editButton1.setImage(UIImage(named: "EditButton.svg"), for: .normal)
        uniInfoView.addSubview(editButton1)
        view.addSubview(uniInfoView)
        
        cityLabelView.frame = CGRect(origin: .init(x: self.view.frame.width * 0.05, y: self.view.frame.width * 1.3 + 20), size: CGSize(width: self.view.frame.width, height: 20))
        cityLabel.frame = CGRect(origin: .init(x: 0, y: 0), size: CGSize(width: self.view.frame.width, height: 20))
        cityLabel.text = "City"
        cityLabel.font = UIFont.systemFont(ofSize: 13)
        cityLabel.textColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1.0)
        cityLabel.textAlignment = .left
        cityLabelView.backgroundColor = .clear
        cityLabelView.addSubview(cityLabel)
        view.addSubview(cityLabelView)
        
        cityInfoView.frame = CGRect(origin: .init(x: 0, y: self.view.frame.width * 1.3 + 40), size: CGSize(width: self.view.frame.width, height: 20))
        cityText.frame = CGRect(origin: .init(x: self.view.frame.width * 0.035, y: 0), size: CGSize(width: self.view.frame.width * 0.6, height: self.view.frame.width * 0.2))
        cityText.text = "Kazan"
        cityText.isEditable = false
        cityInfoView.addSubview(cityText)
        editButton2.setImage(UIImage(named: "EditButton.svg"), for: .normal)
        cityInfoView.addSubview(editButton2)
        view.addSubview(cityInfoView)
        
        textChanger.addAction(updateAction)
        textChanger.addAction(cancelAction)
        
        editButton1.frame = CGRect(origin: .init(x: self.view.frame.width * 0.9, y: 10), size: CGSize(width: 20, height: 20))
        editButton2.frame = CGRect(origin: .init(x: self.view.frame.width * 0.9, y: 10), size: CGSize(width: 20, height: 20))
       
        editButton1.addTarget(self, action: #selector(editButton1Tapped), for: .touchUpInside)
        editButton2.addTarget(self, action: #selector(editButton2Tapped), for: .touchUpInside)
        }

    @objc func editButton1Tapped() {
        let textChanger = UIAlertController(title: "Enter new value", message: "", preferredStyle: .alert)
        textChanger.addTextField { textField in
            textField.placeholder = "University information"
        }
        
        let updateAction = UIAlertAction(title: "Update", style: .default) { [weak self] _ in
            if let textField = textChanger.textFields?.first,
               let newText = textField.text {
                self?.uniText.text = newText
            }
        }
        textChanger.addAction(updateAction)
        textChanger.addAction(cancelAction)
        present(textChanger, animated: true, completion: nil)

    }

    @objc func editButton2Tapped() {
        let textChanger = UIAlertController(title: "Enter new value", message: "", preferredStyle: .alert)
        textChanger.addTextField { textField in
            textField.placeholder = "City information"
        }
        
        let updateAction = UIAlertAction(title: "Update", style: .default) { [weak self] _ in
            if let textField = textChanger.textFields?.first,
               let newText = textField.text {
                self?.cityText.text = newText
            }
        }
        textChanger.addAction(updateAction)
        textChanger.addAction(cancelAction)
        present(textChanger, animated: true, completion: nil)
    }
}

