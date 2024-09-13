//
//  PlantViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

class PlantViewModel: ObservableObject {
    @Published var plants : [Plant] = []
    private let baseUrl : String = "http://10.80.55.36:3000/plants"
    
    func fetchPlants() {
        guard let url = URL(string : baseUrl) else {
            print("Invalid Url : Error")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedPlants = try JSONDecoder().decode([Plant].self, from: data)
                    DispatchQueue.main.async {
                        self.plants = decodedPlants
                    }
                } catch {
                    print("Error decoding data : \(error)")
                }
            } else if let error = error {
                print("Error fetching data : \(error)")
            }
        }.resume()
    }
}
