//
//  TableViewController.swift
//  TableView homework
//
//  Created by Serper Kurmanbek on 14.12.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
 //  var arrayNames = ["Статуя Свободы","Тадж-Махал", "Эйфелева Башня", "Колизей", "Сфинкс"]
//    var arrayLocation = ["Город: Нью-Йорк", "Город: Агра", "Город: Париж", "Город: Рим", "Город: Гиза"]
//    var arrayImage = ["Статуя","Тадж-Махал", "Башня", "Колизей", "Сфинкс"]
    var arrayPlaces = [Places(name:"Cтатуя Свободы", location: "Город: Нью-Йорк", imageName: "Статуя", description:"Вот уже больше века она высоко держит свой факел. Иммигранты, беженцы, туристы, те, кто вернулся домой, – Статуя Свободы встречает всех, кто заходит в нью-йоркскую гавань.Статуя Свободы (Statue of Liberty) — одна из самых знаменитых скульптур в мире, часто называемая «символом Нью-Йорка и США», «символом свободы и демократии», «Леди Свобода».", imageName2: "Статуя2", imageName3: "Статуя3"),
                       Places(name: "Тадж-Махал" , location: "Город: Агра", imageName: "Тадж-Махал", description: "Тадж-Махал — мавзолей-мечеть в Агре, является одним из шедевров мировой архитектуры, находится на севере индийского штата Уттар-Прадеш. Шах Джахан, правитель этих мест, приказал соорудить Тадж-Махал в честь своей супруги Мумтаз-Махал, отмечая таким образом 18 лет счастливого брака и ее кончину при рождении их четырнадцатого ребенка. В знак своей любви и в память о прекрасной супруге шах приказал возвести самый великолепный мавзолей на свете.", imageName2: "Тадж2",imageName3: "Тадж3"),
                       Places(name: "Эйфелева Башня" , location: "Город: Париж", imageName: "Башня", description: "Эйфелева башня — самая узнаваемая достопримечательность Парижа, названная в честь своего создателя и принимающая более 6 миллионов посетителей ежегодно. Башня находится в 7-м округе французской столицы, в северо-западной части Марсова поля.",imageName2: "Башня2",imageName3: "Башня3"),
                       Places(name: "Колизей" , location: "Город: Рим", imageName: "Колизей",description:"Колизей – один из самых узнаваемых архитектурных памятников как в Италии, так и во всём мире. Почти две тысячи лет величественный амфитеатр, расположенный в самом центре Рима, собирает вокруг себя миллионы посетителей, желающих своими глазами увидеть это культовое сооружение.Название Колизей происходит от латинского слова 'colosseus', которое означает «огромный». Такой казалась постройка римлянам на заре нашей эры, когда высота большинства зданий не превышала 10 метров. Современные туристы иначе оценивают размеры амфитеатра, так как небоскрёбы изменили наше ощущение масштаба. Но важно понимать, что особенность Колизея не в высоте его стен, а том культурном и историческом вкладе, который он внёс в цивилизацию.",imageName2: "Колизей2",imageName3: "Колизей3"),
                       Places(name:"Сфинкс"  , location: "Город: Гиза", imageName: "Сфинкс",description: "Сфинкс — одна из самых величайших загадок человечества покоится на древнейших землях Египта. Архаический монумент гигантских размеров распростёрся на западном берегу Нила, на протяжении веков охраняя эпохальные пирамиды. Мифическое существо с телом льва и головой фараона, окутанное туманом бесконечных тайн и вопросов, символизирует всю страну и являет собой неразгаданную веху истории. Великолепный Большой Сфинкс – притягивает, интригует, впечатляет, вселяет трепет.",imageName2:"Сфинкс2",imageName3: "Сфинкс3")]
     
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func addAtractions(_ sender: Any) {
//        arrayNames.append("New place")
//        arrayLocation.append("New Location")
//        arrayImage.append("иконка")
        arrayPlaces.append(Places(name: "New place" , location: "New Location", imageName:"иконка"))
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPlaces.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayPlaces[indexPath.row].name
        
        let labelSurname = cell.viewWithTag(1001) as! UILabel
        labelSurname.text = arrayPlaces[indexPath.row].location
                                
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: arrayPlaces[indexPath.row].imageName)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
//        detailVc.name = arrayPlaces[indexPath.row].name
//        detailVc.descript = arrayPlaces[indexPath.row].location
//        detailVc.imagename = arrayPlaces[indexPath.row].imageName
        detailVc.places = arrayPlaces[indexPath.row]
        
        navigationController?.show(detailVc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
//            arrayNames.remove(at: indexPath.row)
//            arrayLocation.remove(at: indexPath.row)
//            arrayImage.remove(at: indexPath.row)
            arrayPlaces.remove(at: indexPath.row)
            
          
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

}
