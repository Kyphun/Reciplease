//
//  SearchController.swift
//  Reciplease
//
//  Created by Kyphun Lepeule on 27/10/2021.
//

import UIKit

class SearchController: UIViewController {
    
    @IBOutlet weak var tableView: MainTableView!
    @IBOutlet weak var textField: UITextField!
    
    var ingredientItemToEdit: IngredientItem?
    var ingredientItems = IngredientItem.getFakeData()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @IBAction func addButton(_ sender: Any) {
        addIngredient()
    }
    
    @IBAction func clearButton(_ sender: Any) {
        ingredientItems.removeAll()
        tableView.reloadData()
    }
    
    
    private func addIngredient() {
        guard let name = textField.text else { return }
        let item = IngredientItem(title: "- \(name)")
        ingredientItems.append(item)
        tableView.reloadData()
    }
    
}

extension SearchController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath)
        let ingredient = ingredientItems[indexPath.row]
        
        cell.textLabel?.text = ingredient.title
        return cell
    }
}

extension SearchController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            ingredientItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
