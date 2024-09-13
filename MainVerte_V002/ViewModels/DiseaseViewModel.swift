//
//  DiseaseViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation
import SwiftUI

class DiseaseViewModel: ObservableObject {
    
    @Published var diseases : [Disease] = []
    
    func fetchDiseases() {
        
        guard let url = URL(string: "http://10.80.55.36:3000/diseases") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedDiseases = try JSONDecoder().decode([Disease].self, from: data)
                    
                    DispatchQueue.main.async {
                        self.diseases = decodedDiseases
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
            else if let error = error {
                print("Error fetching data: \(error)")
            }
        } .resume()
    }
}


