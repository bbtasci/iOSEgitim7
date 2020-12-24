//
//  ViewController.swift
//  MyPersonalZone
//
//  Created by Baris Berkin Tasci on 23.12.2020.
//

import UIKit

class CreateZoneViewController: UIViewController {
    
    // MARK: - OUTLETS
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appInfoLabel: UILabel!
    
    @IBOutlet weak var createNameTF: UITextField!
    @IBOutlet weak var createSurnameTF: UITextField!
    @IBOutlet weak var createIdentificationTF: UITextField!
    @IBOutlet weak var createBirthdayTF: UITextField!
    @IBOutlet weak var createCountryTF: UITextField!
    @IBOutlet weak var createStateTF: UITextField!
    @IBOutlet weak var createPhoneTF: UITextField!
    @IBOutlet weak var createUniversityTF: UITextField!
    @IBOutlet weak var createHoroscopeTF: UITextField!
    @IBOutlet weak var createFavTeamTF: UITextField!
    @IBOutlet weak var createFavPlayerTF: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    // MARK: - LIFECYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUICZ()
    }
    
    func singletonTransport() {
        Singleton.shared.name = (createNameTF.text) ?? ""
        Singleton.shared.surname = (createSurnameTF.text) ?? ""
        Singleton.shared.id = (createIdentificationTF.text) ?? ""
        Singleton.shared.birthday = (createBirthdayTF.text) ?? ""
        Singleton.shared.country = (createCountryTF.text) ?? ""
        Singleton.shared.state = (createStateTF.text) ?? ""
        Singleton.shared.phone = (createPhoneTF.text) ?? ""
        Singleton.shared.university = (createUniversityTF.text) ?? ""
        Singleton.shared.horoscope = (createHoroscopeTF.text) ?? ""
        Singleton.shared.favTeam = (createFavTeamTF.text) ?? ""
        Singleton.shared.favPlayer = (createFavPlayerTF.text) ?? ""
    }
    
    func isTextfieldsEmpty() -> Bool {
        if createNameTF.text == "" || createSurnameTF.text == "" || createIdentificationTF.text == "" {
            return true
        } else {
            return false
        }
    }
    
    func showAlert(message: String) {
        let alertNoEmpty = UIAlertController(title: "Warning!", message: message, preferredStyle: .alert)
        alertNoEmpty.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertNoEmpty, animated: true)
    }
    
    // MARK: - PREPARE UI
    func prepareUICZ() {
        prepareLayer(object: logoImageView as Any)
        prepareLayer(object: appNameLabel as Any)
        prepareLayer(object: appInfoLabel as Any)
        prepareLayer(object: createNameTF as Any)
        prepareLayer(object: createSurnameTF as Any)
        prepareLayer(object: createIdentificationTF as Any)
        prepareLayer(object: createBirthdayTF as Any)
        prepareLayer(object: createCountryTF as Any)
        prepareLayer(object: createSurnameTF as Any)
        prepareLayer(object: createPhoneTF as Any)
        prepareLayer(object: createUniversityTF as Any)
        prepareLayer(object: createHoroscopeTF as Any)
        prepareLayer(object: createFavTeamTF as Any)
        prepareLayer(object: createFavPlayerTF as Any)
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
    
    // MARK: - ACTIONS
    @IBAction func saveButtonTouched(_ sender: Any) {
        if isTextfieldsEmpty() {
            showAlert(message: "NAME, SURNAME and ID can not be empty!")
        } else {
            singletonTransport()
            performSegue(withIdentifier: "saveButton", sender: nil)
        }
    }
    
}
