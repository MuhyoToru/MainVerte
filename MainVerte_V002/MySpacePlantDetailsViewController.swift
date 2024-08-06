//
//  MySpacePlantDetailsViewController.swift
//  MainVerte_V002
//
//  Created by Pierre on 05/08/2024.
//

import UIKit

class MySpacePlantDetailsViewController : UIViewController {
    var plantImageView : UIImageView = UIImageView()
    var plantScientificNameLabel : UILabel = UILabel()
    var globalInformationLabel : UILabel = UILabel()
    var plantPlantationDateLabel : UILabel = UILabel()
    var plantIsInPotOrNotLabel : UILabel = UILabel()
    var plantDifficultyLabel : UILabel = UILabel()
    var plantPlantingMethodTextView : UITextView = UITextView()
    
    var spacing : CGFloat = 16
    
    var plantation : Plantation = Plantation(personalNotes: "", plantedDate: Date.now, plant: Plant(name: "", scientificName: "", image: "", description: "", size: 0, startSowingDate: .january, endSowingDate: .january, startBloomDate: .january, endBloomDate: .january, minTemperature: 0, maxTemperature: 0, wateringFrequency: 0, wateringQuantity: 0, spacing: 0, plantingMethod: "", startHarvestDate: .january, endHarvestDate: .january, colors: [], difficulty: "", fertilizers: [], diseases: [], exposures: [], soils: [], interiorExterior: [], containers: []), container: .inGround)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setComponants()
    }
    
    func setComponants() {
        self.view.addSubview(plantImageView)
        plantImageView.translatesAutoresizingMaskIntoConstraints = false
        plantImageView.image = UIImage(named: plantation.plant.image)
        plantImageView.contentMode = .scaleAspectFill
        plantImageView.clipsToBounds = true
        plantImageView.layer.cornerRadius = 20
        
        self.view.addSubview(plantScientificNameLabel)
        plantScientificNameLabel.translatesAutoresizingMaskIntoConstraints = false
        plantScientificNameLabel.text = plantation.plant.scientificName
        plantScientificNameLabel.textAlignment = .center
        
        self.view.addSubview(globalInformationLabel)
        globalInformationLabel.translatesAutoresizingMaskIntoConstraints = false
        globalInformationLabel.text = "Information de la plante :"
        globalInformationLabel.font = UIFont(name: "Sumana-Regular", size: 26)
        globalInformationLabel.textColor = .mvDarkGreen
        globalInformationLabel.heightAnchor.constraint(equalToConstant: 26 * 1.8).isActive = true
        
        self.view.addSubview(plantPlantationDateLabel)
        plantPlantationDateLabel.translatesAutoresizingMaskIntoConstraints = false
        plantPlantationDateLabel.text = "Planté le : " + "14 Mai 2024"
        
        self.view.addSubview(plantIsInPotOrNotLabel)
        plantIsInPotOrNotLabel.translatesAutoresizingMaskIntoConstraints = false
        plantIsInPotOrNotLabel.text = "La plante est en \(plantation.container == .inGround ? "terre" : "pot")"
        
        self.view.addSubview(plantDifficultyLabel)
        plantDifficultyLabel.translatesAutoresizingMaskIntoConstraints = false
        plantDifficultyLabel.text = "Difficulté d'entretien : \(plantation.plant.difficulty)"
        
        self.view.addSubview(plantPlantingMethodTextView)
        plantPlantingMethodTextView.translatesAutoresizingMaskIntoConstraints = false
        plantPlantingMethodTextView.text = "Méthode de semi : " + plantation.plant.plantingMethod
        plantPlantingMethodTextView.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        plantPlantingMethodTextView.backgroundColor = .clear
        
        NSLayoutConstraint.activate([
            plantImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            plantImageView.heightAnchor.constraint(equalToConstant: 200),
            plantImageView.widthAnchor.constraint(equalToConstant: 200),
            plantImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            plantScientificNameLabel.topAnchor.constraint(equalTo: plantImageView.bottomAnchor, constant: 8),
            plantScientificNameLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            plantScientificNameLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            
            globalInformationLabel.topAnchor.constraint(equalTo: plantScientificNameLabel.bottomAnchor, constant: spacing),
            globalInformationLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            globalInformationLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            
            plantPlantationDateLabel.topAnchor.constraint(equalTo: globalInformationLabel.bottomAnchor, constant: spacing),
            plantPlantationDateLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            plantPlantationDateLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            
            plantIsInPotOrNotLabel.topAnchor.constraint(equalTo: plantPlantationDateLabel.bottomAnchor, constant: spacing),
            plantIsInPotOrNotLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            plantIsInPotOrNotLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            
            plantDifficultyLabel.topAnchor.constraint(equalTo: plantIsInPotOrNotLabel.bottomAnchor, constant: spacing),
            plantDifficultyLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            plantDifficultyLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            
            plantPlantingMethodTextView.topAnchor.constraint(equalTo: plantDifficultyLabel.bottomAnchor, constant: spacing/2),
            plantPlantingMethodTextView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            plantPlantingMethodTextView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            plantPlantingMethodTextView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}
