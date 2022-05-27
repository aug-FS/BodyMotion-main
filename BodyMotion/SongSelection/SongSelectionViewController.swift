//
//  SongSelectionViewController.swift
//  BodyMotion
//
//  Created by Rafael Forbeck on 22/05/21.
//

import UIKit

class SongSelectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var tagCollection: UICollectionView!
    @IBOutlet weak var songsTable: UITableView!
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var songTime: UILabel!
    @IBOutlet weak var instructionsButton: UIButton!
    
    var selectedIndex = 0
    var songs: [Song]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
//        view.addGestureRecognizer(tap)
        
        songsTable.dataSource = self
        songsTable.delegate = self
        tagCollection.delegate = self
        tagCollection.dataSource = self
        
        songs = SongsBank.all
        updateSong()
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
    @IBAction func playPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Loading") as! LoadingViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func instructionsPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Instructions") as! InstructionsViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let song = songs[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell") as! SongSelectionTableViewCell
        cell.album.image = song.cover
        cell.songName.text = song.songName
        cell.artistName.text = song.artistName
        if indexPath.row == selectedIndex {
            cell.bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        } else {
            cell.bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let oldCell = tableView.cellForRow(at: IndexPath(item: selectedIndex, section: 0)) as! SongSelectionTableViewCell
        oldCell.bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        
        selectedIndex = indexPath.row
        let cell = tableView.cellForRow(at: indexPath) as! SongSelectionTableViewCell
        cell.bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        updateSong()
    }
    
    func filterSongs(search: String) {
        selectedIndex = 0;
        if search.isEmpty {
            songs = SongsBank.all
            songsTable.reloadData()
            return
        }
        let searchUpper = search.uppercased()
        let all = SongsBank.all
        songs = [Song]()
        for song in all {
            if song.songName.uppercased().contains(searchUpper) {
                songs.append(song)
                continue
            }
            if song.artistName.uppercased().contains(searchUpper) {
                songs.append(song)
                continue
            }
            if searchInTags(tags: song.tags, search: search) {
                songs.append(song)
            }
        }
        songsTable.reloadData()
    }
    
    func searchInTags(tags: [Tag], search: String) -> Bool {
        for tag in tags {
            if tag.rawValue.uppercased().contains(search) {
                return true
            }
        }
        return false
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! SongSelectionTableViewCell
        cell.bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
    }
    
    func updateSong() {
        let song = songs[selectedIndex]
        cover.image = song.cover
        songName.text = song.songName
        artistName.text = song.artistName
        songTime.text = song.songTime
//        instructionsButton.isHidden = song.instrutionVideo == nil
        Game.instance.setSong(song: song)
        tagCollection.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("count \(songs[selectedIndex].tags.count)")
        return songs[selectedIndex].tags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("count cell")
        let item = songs[selectedIndex].tags[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tag", for: indexPath) as! TagCollectionViewCell
        
        cell.tagLabel.text = "#\(item.rawValue)"
        
        return cell
    }
}
