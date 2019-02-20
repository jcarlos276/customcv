//
//  DatosViewController.swift
//  PersonalCV
//
//  Created by Juan Carlos Guillén Castro on 9/12/18.
//

import UIKit

class InfoCell: UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    var title = ""
    var content = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func loadData() {
        titleLbl.text = title
        contentLbl.text = content
    }
}

class DatosViewController: UIViewController {
    
    @IBOutlet weak var infoTableView: UITableView!
    var personalInfo = ["Dirección":"Jr. Bateria Independencia 265 - La Victoria", "Celular":"+51 941 130 986", "Correo":"juan.cgc276@gmail.com","LinkedIn": "@j-guillen"]

    override func viewDidLoad() {
        super.viewDidLoad()
        infoTableView.delegate = self
        infoTableView.dataSource = self
    }

}

extension DatosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personalInfo.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = infoTableView.dequeueReusableCell(withIdentifier: "InfoCell") as! InfoCell
        cell.selectionStyle = .none
        cell.title = personalInfo.keys.sorted()[indexPath.row]
        cell.content = personalInfo[cell.title] ?? ""
        cell.loadData()
        return cell
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
