//
//  Codable.swift
//  JSON
//
//  Created by ساره المرشد on 28/05/2023.
//
import UIKit
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var result: Result?
    private let tableView: UITableView = {
        let  table = UITableView(frame: .zero , style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    override func viewDidLoad(){
        super.viewDidLoad()
        parseJSON()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return result?.data.count ?? 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return result?.data[section].title
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  { if let result = result {
            return result.data[section].item.count
           
        }
        return  0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let text = result?.data[indexPath.section].item[indexPath.row]
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        cell.textLabel?.text = text
        return cell
    }
        
    
    private func parseJSON() {
guard let path = Bundle.main.path(forResource: "data", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
      
        do{
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
         
         
        }
        catch{
            print("error \(error)")
        }
    }
}

