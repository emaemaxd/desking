import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    var hours: Int = 0
    var minutes: Int = 0
    var seconds: Int = 0
    var totalSeconds: Int = 0
    var timer: Timer?
    var timestamp: TimeInterval?
    
    // UserID to be stored in the db
    let userId = 1
    
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var start_button: UIButton!
    @IBOutlet weak var time_display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getEntries()
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    @IBAction func onTimerButtonClick(_ sender: UIButton) {
        if((timer?.isValid) == nil) {
            
            // Start timer
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireSeconds), userInfo: nil, repeats: true)
            
            // Change button style
            start_button.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            
            timestamp = NSDate().timeIntervalSince1970

        }
        
        else {
            postTime()
            
            // Stop timer
            timer?.invalidate()
            timer = nil
            
            hours = 0
            minutes = 0
            seconds = 0
            totalSeconds = 0
            
            time_display.text = "00:00:00"
            
            // Change button style
            start_button.setImage(UIImage(systemName: "play.fill"), for: .normal)
        }
    }
    
    // Timer logic
    @objc func fireSeconds() {
        if(seconds > 58){
            minutes = minutes+1;
            seconds = 0;
        }
        if(minutes > 58){
            hours = hours+1;
            minutes = 0;
        }
        seconds = seconds+1;
        totalSeconds = totalSeconds+1;
        
        // Display time count
        let str_sec = seconds > 9 ? String(seconds) : "0\(seconds)"
        let str_min = minutes > 9 ? String(minutes) : "0\(minutes)"
        let str_hrs = hours > 9 ? String(hours) : "0\(hours)"
        
        time_display.text = "\(str_hrs):\(str_min):\(str_sec)"
    }
    
    // Standort Test
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        //print("Standort : = \(locValue.latitude) \(locValue.longitude)")
        
        guard let location: CLLocation = manager.location else { return }
        fetchLocation(from: location) { city, country, error in
            guard let city = city, let country = country, error == nil else { return }
            //print(city + ", " + country)
        }
        
    }
    // City Mapping
    func fetchLocation(from location: CLLocation, completion: @escaping (_ city: String?, _ country:  String?, _ error: Error?) -> ()) {
        CLGeocoder().reverseGeocodeLocation(location) { placemarks, error in
            completion(placemarks?.first?.locality,
                       placemarks?.first?.country,
                       error)
        }
    }
    
    func postTime() {
      // declare the parameter as a dictionary that contains string as key and value combination. considering inputs are valid
        let parameters: [String: Any] = ["userId": userId, "startTime": timestamp!, "timePassed": totalSeconds, "longitude": locationManager.location?.coordinate.longitude ??  0, "latitude": locationManager.location?.coordinate.latitude ?? 0]
      
      // create the url with URL
      let url = URL(string: "https://apex.cloud.htl-leonding.ac.at/ords/ws_u4bhitm13/desking/new")!
      
      // create the session object
      let session = URLSession.shared
      
      // now create the URLRequest object using the url object
      var request = URLRequest(url: url)
      request.httpMethod = "POST" //set http method as POST
      
      // add headers for the request
      request.addValue("application/json", forHTTPHeaderField: "Content-Type") // change as per server requirements
      request.addValue("*/*", forHTTPHeaderField: "Accept")
      
      do {
        // convert parameters to Data and assign dictionary to httpBody of request
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
      } catch let error {
        print(error.localizedDescription)
        return
      }
      
      // create dataTask using the session object to send data to the server
      let task = session.dataTask(with: request) { data, response, error in
        
        if let error = error {
          print("Post Request Error: \(error.localizedDescription)")
          return
        }
        
        // ensure there is valid response code returned from this HTTP response
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode)
        else {
          print("Invalid Response received from the server")
          return
        }
        
        // ensure there is data returned
        guard let responseData = data else {
          print("nil Data received from the server")
          return
        }
        
        do {
          // create json object from data or use JSONDecoder to convert to Model stuct
            if (try JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) as? [String: Any]) != nil {
          } else {
            print("data maybe corrupted or in wrong format")
            throw URLError(.badServerResponse)
          }
        } catch let error {
          print(error.localizedDescription)
        }
      }
      // perform the task
      task.resume()
    }
    
    func getEntries(){
        let url : String = "http://apex.cloud.htl-leonding.ac.at/ords/ws_u4bhitm13/desking_entries/"
               
        URLSession.shared.dataTask(with: NSURL(string: url)! as URL) { data, response, error in
                    // Handle result
                    if((data?.isEmpty) != nil){
                    let response = String (data: data!, encoding: String.Encoding.utf8)
                               print("response is \(response)")

                    do {
                        let getResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)

                        print(getResponse)
                                    
                    
                         
                   } catch {
                       print("error serializing JSON: \(error)")
                   }}else{
                       print("data is nil -.- ")
                   }
                }.resume()
            }
    }
                                    



