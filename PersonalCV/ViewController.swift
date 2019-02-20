//
//  ViewController.swift
//  PersonalCV
//
//  Created by Juan Carlos Guillén Castro on 9/11/18.
//

import UIKit

class SectionCell: UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    var title = ""
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func loadTitle() {
        titleLbl.text = title
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var sections = ["Datos", "Perfil", "Habilidades Técnicas", "Experiencia", "Educación", "Intereses", "Referencias"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell") as! SectionCell
        cell.selectionStyle = .none
        cell.title = sections[indexPath.row]
        cell.loadTitle()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.visibleCells[indexPath.row] as! SectionCell
        performSegue(withIdentifier: cell.titleLbl.text!, sender: nil)
    }
}

