//
//  LoginViewController.swift
//  Bankey
//
//  Created by Atash Musazada on 14.06.23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let headerImage = UIImageView()
    let heroImage = UIImageView()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let customButton = CustomButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        // Do any additional setup after loading the view.
    }
}

extension LoginViewController {
    private func style() {
        
        let secondLabeltext = "Fərdi məlumatlarınızı rəqəmsal qaydada əldə etmək bir klik qədər yaxındır!"
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        let attributedText = NSAttributedString(string: secondLabeltext, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
                
        
        view.backgroundColor = UIColor(named: "login-background-color")
        
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.image = UIImage(named: "header-img")
        
        heroImage.translatesAutoresizingMaskIntoConstraints = false
        heroImage.image = UIImage(named: "hero-img")
        
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.text = "Sizin rəqəmsal portfeliniz!"
        firstLabel.textColor = UIColor(named: "title-color")
        firstLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.text = secondLabeltext
        secondLabel.textColor = UIColor(named: "title-color")
        secondLabel.numberOfLines = 0
        secondLabel.lineBreakMode = .byWordWrapping
        secondLabel.attributedText = attributedText
        secondLabel.textAlignment = .center
        secondLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        
        customButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
    }
        
    private func layout() {
        view.addSubview(headerImage)
        view.addSubview(heroImage)
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(customButton)

        
        //HEADER
        NSLayoutConstraint.activate([
            headerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerImage.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 6)
        ])
        
        //HERO
        NSLayoutConstraint.activate([
            heroImage.topAnchor.constraint(equalToSystemSpacingBelow: headerImage.bottomAnchor, multiplier: 6),
            heroImage.centerXAnchor.constraint(equalTo: headerImage.centerXAnchor)
        ])
        
        //FIRSTLABEL
        NSLayoutConstraint.activate([
            firstLabel.topAnchor.constraint(equalToSystemSpacingBelow: heroImage.bottomAnchor, multiplier: 4.3),
            firstLabel.centerXAnchor.constraint(equalTo: heroImage.centerXAnchor)
        ])
        
        //SECONDLABEL
        NSLayoutConstraint.activate([
            secondLabel.topAnchor.constraint(equalToSystemSpacingBelow: firstLabel.bottomAnchor, multiplier: 2.5),
            secondLabel.centerXAnchor.constraint(equalTo: firstLabel.centerXAnchor),
            secondLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 9)
        ])
        
        //BUTTON
        NSLayoutConstraint.activate([
            customButton.topAnchor.constraint(equalToSystemSpacingBelow: secondLabel.bottomAnchor, multiplier: 9.5),
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
}
    
