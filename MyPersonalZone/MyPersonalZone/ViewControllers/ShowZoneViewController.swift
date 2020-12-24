//
//  ShowZoneViewController.swift
//  MyPersonalZone
//
//  Created by Baris Berkin Tasci on 23.12.2020.
//

import UIKit

class ShowZoneViewController: UIViewController {

    @IBOutlet weak var saveIconImageView: UIImageView!
    @IBOutlet weak var saveConfirmedLabel: UILabel!
    @IBOutlet weak var goToPreviousLabel: UILabel!
    
    @IBOutlet weak var showNameLabel: UILabel!
    @IBOutlet weak var showSurnameLabel: UILabel!
    @IBOutlet weak var showIDLabel: UILabel!
    @IBOutlet weak var showBirthdayLabel: UILabel!
    @IBOutlet weak var showCountryLabel: UILabel!
    @IBOutlet weak var showStateLabel: UILabel!
    @IBOutlet weak var showPhoneLabel: UILabel!
    @IBOutlet weak var showUniversityLabel: UILabel!
    @IBOutlet weak var showHoroscopeLabel: UILabel!
    @IBOutlet weak var showFavTeamLabel: UILabel!
    @IBOutlet weak var showFavPlayerLabel: UILabel!
    
    
    @IBOutlet weak var secondLogoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareUISZ()
        
        showNameLabel.text = Singleton.shared.name
        showSurnameLabel.text = Singleton.shared.surname
        showIDLabel.text = Singleton.shared.id
        showBirthdayLabel.text = Singleton.shared.birthday
        showCountryLabel.text = Singleton.shared.country
        showStateLabel.text = Singleton.shared.state
        showPhoneLabel.text = Singleton.shared.phone
        showUniversityLabel.text = Singleton.shared.university
        showHoroscopeLabel.text = Singleton.shared.horoscope
        showFavTeamLabel.text = Singleton.shared.favTeam
        showFavPlayerLabel.text = Singleton.shared.favPlayer
    }
    
    
    func prepareUISZ() {
        prepareLayer(object: saveIconImageView as Any)
        prepareLayer(object: saveConfirmedLabel as Any)
        prepareLayer(object: goToPreviousLabel as Any)
        prepareLayer(object: showNameLabel as Any)
        prepareLayer(object: showSurnameLabel as Any)
        prepareLayer(object: showIDLabel as Any)
        prepareLayer(object: showBirthdayLabel as Any)
        prepareLayer(object: showCountryLabel as Any)
        prepareLayer(object: showStateLabel as Any)
        prepareLayer(object: showPhoneLabel as Any)
        prepareLayer(object: showUniversityLabel as Any)
        prepareLayer(object: showHoroscopeLabel as Any)
        prepareLayer(object: showFavTeamLabel as Any)
        prepareLayer(object: showFavPlayerLabel as Any)
    }
    
    func prepareLayer(object: Any) {
        if let object = object as? UIControl {
            object.layer.cornerRadius = 5
            object.layer.masksToBounds = true
        } else if let object = object as? UIView {
            object.layer.cornerRadius = 5
            object.layer.masksToBounds = true
        }
    }
    
}
