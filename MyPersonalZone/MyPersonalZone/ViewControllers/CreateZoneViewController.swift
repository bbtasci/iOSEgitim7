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
    
    func emptyCheck() {
        if createNameTF.text == "NAME" || createSurnameTF.text == "" || createIdentificationTF.text == "" {
            alertThereIsEmpty()
        } else {
            singletonTransport()
        }
    }
    
    func alertThereIsEmpty() {
            let alertNoEmpty = UIAlertController(title: "Warning!", message: "NAME, SURNAME and ID can not be empty!", preferredStyle: .alert)
            alertNoEmpty.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertNoEmpty, animated: true)
    }
    
    func prepareUICZ() {
        prepareLogo()
        prepareAppName()
        prepareAppInfoLabel()
        prepareCreateNameTF()
        prepareCreateSurnameTF()
        prepareCreateIdentificationTF()
        prepareCreateBirthdayTF()
        prepareCreateCountryTF()
        prepareCreateStateTF()
        prepareCreatePhoneTF()
        prepareCreateUniversityTF()
        prepareCreateHoroscopeTF()
        prepareCreateFavTeamTF()
        prepareCreateFavPlayerTF()
        prepareSaveButton()
    }
    func prepareLogo() {
        logoImageView.layer.cornerRadius = 5
        logoImageView.layer.masksToBounds = true
    }
    func prepareAppName() {
        appNameLabel.layer.cornerRadius = 5
        appNameLabel.layer.masksToBounds = true
    }
    func prepareAppInfoLabel() {
        appInfoLabel.layer.cornerRadius = 5
        appInfoLabel.layer.masksToBounds = true
    }
    func prepareCreateNameTF() {
        createNameTF.layer.cornerRadius = 5
        createNameTF.layer.masksToBounds = true
    }
    func prepareCreateSurnameTF() {
        createSurnameTF.layer.cornerRadius = 5
        createSurnameTF.layer.masksToBounds = true
    }
    func prepareCreateIdentificationTF() {
        createIdentificationTF.layer.cornerRadius = 5
        createIdentificationTF.layer.masksToBounds = true
    }
    func prepareCreateBirthdayTF() {
        createBirthdayTF.layer.cornerRadius = 5
        createBirthdayTF.layer.masksToBounds = true
    }
    func prepareCreateCountryTF() {
        createCountryTF.layer.cornerRadius = 5
        createCountryTF.layer.masksToBounds = true
    }
    func prepareCreateStateTF() {
        createStateTF.layer.cornerRadius = 5
        createStateTF.layer.masksToBounds = true
    }
    func prepareCreatePhoneTF() {
        createPhoneTF.layer.cornerRadius = 5
        createPhoneTF.layer.masksToBounds = true
    }
    func prepareCreateUniversityTF() {
        createUniversityTF.layer.cornerRadius = 5
        createUniversityTF.layer.masksToBounds = true
    }
    func prepareCreateHoroscopeTF() {
        createHoroscopeTF.layer.cornerRadius = 5
        createHoroscopeTF.layer.masksToBounds = true
    }
    func prepareCreateFavTeamTF() {
        createFavTeamTF.layer.cornerRadius = 5
        createFavTeamTF.layer.masksToBounds = true
    }
    func prepareCreateFavPlayerTF() {
        createFavPlayerTF.layer.cornerRadius = 5
        createFavPlayerTF.layer.masksToBounds = true
    }
    func prepareSaveButton() {
        saveButton.layer.cornerRadius = 5
        saveButton.layer.masksToBounds = true
    }
    
    // MARK: - ACTIONS
    @IBAction func saveButtonTouched(_ sender: Any) {
        emptyCheck()
        performSegue(withIdentifier: "saveButton", sender: nil)
    }
    
}

