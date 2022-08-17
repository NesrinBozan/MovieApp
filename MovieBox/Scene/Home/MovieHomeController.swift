//
//  MovieHomeController.swift
//  MovieBox
//
//  Created by Nesrin Bozan on 5.08.2022.
//

import UIKit
import SnapKit

final class MovieHomeController: UIViewController { // final class olmas sebebi, Derleyeciye alt sınıflardan override edilemeyeceğini x-code a söylemiş oluyoruz. Uygulamanın daha performanslı çalışmasını sağlıyor.

    // MARK: - UI Elements
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    // MARK: - Properties
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        makeTableView()


    }
    // MARK: - Functions
    private func configure(){
        
        drawDesign()
        addElementSubviews()
    }
    
    private   func drawDesign(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MovieHomeCell.self, forCellReuseIdentifier: MovieHomeCell.Identifier.custom.rawValue)
 
    }
    private  func addElementSubviews(){
        
        view.addSubview(tableView)
    }
    
    // MARK: - Actions

  

}

// MARK: - TableView Extension
extension MovieHomeController: ConfigureTableView{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // as? , ! yerine kullanılma sebebi guard let kullanılması.
        guard let cell: MovieHomeCell = tableView.dequeueReusableCell(withIdentifier: MovieHomeCell.Identifier.custom.rawValue) as?
            MovieHomeCell else { return UITableViewCell()}
        return cell // MovieHomeCell e erişebildik.
        
        //Fonksiyon ile method arasında bir fark yoktur ama classlar içerisinde fonksiyon method oluyor. Sınıf dışarısında fonksiyon olmaktadır.
        
    }
    
}

extension MovieHomeController {
    
    private func makeTableView()
    {
        tableView.snp.makeConstraints {make in make.edges.equalToSuperview()
        
    }}
}
