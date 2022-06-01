//
//  ArbeitszeitenViewController.swift
//  desking-app
//
//  Created by Ema xd on 09.05.22.
//

import UIKit

class ArbeitszeitenViewController: UITableViewController {
    
    var hours = [Int]();
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for hour in 0...23 {
            hours.append(hour)
        }
        
        getEntries()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        return 24
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellElem", for: indexPath) as! CalendarTableViewCell
        
        // init the time next to the lines
        let hour = hours[indexPath.row]
        cell.timeLabel.text = String(format: "%02d:%02d", hour, 0)
         
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected time: \(indexPath.row)")
    }
    
    func getEntries(){
        
        let url : String = "https://apex.cloud.htl-leonding.ac.at/ords/ws_u4bhitm13/desking/new"
        
        URLSession.shared.dataTask(with: NSURL(string: url)! as URL) { data, response, error in
            // Handle result
            if((data?.isEmpty) != nil){
                let response = String (data: data!, encoding: String.Encoding.utf8)
                print("response is \(String(describing: response))")
                
                do {
                    let getResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    
                    print(getResponse)
                    let cast = getResponse as! Dictionary<String, Any>
                    
                    //  print(cast[2])
                    let items = cast["items"] as! [[String: Any]]
                    
                    let temp = items[0]["starttime"] as! Double
                    
                    let uhm = NSDate(timeIntervalSince1970: temp)
                   
                    
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "dddd-YY-MM"
                    let date = dateFormatter.string(from: uhm as Date)
                    let calendar = Calendar.current
                    let comp = calendar.dateComponents([.hour, .minute], from: uhm as Date)
                    let hour = comp.hour
                    let minute = comp.minute
                    
                    
                    
                    print(comp)
                    
                } catch {
                    print("error serializing JSON: \(error)")
                }}else{
                    print("data is nil -.- ")
                }
        }.resume()
    }
}



/*
 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
 let cell = tableView.dequeueReusableCell(withIdentifier: "cellElem", for: indexPath)
 
 // Configure the cell...
 cell.textLabel?.text = "test"
 return cell
 }
 */

/*
 // Override to support conditional editing of the table view.
 override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the specified item to be editable.
 return true
 }
 */

/*
 // Override to support editing the table view.
 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
 if editingStyle == .delete {
 // Delete the row from the data source
 tableView.deleteRows(at: [indexPath], with: .fade)
 } else if editingStyle == .insert {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
 
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the item to be re-orderable.
 return true
 }
 */

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */



