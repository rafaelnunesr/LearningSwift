//
//  ViewController.swift
//  InstagramCollectionViewTableView
//
//  Created by Rafael Nunes Rios on 10/15/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storiesCollectionView: UICollectionView!
    @IBOutlet weak var postsTableView: UITableView!
    
    var stories = [Story]()
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        storiesCollectionView.delegate = self
        storiesCollectionView.dataSource = self
        storiesCollectionView.register(StoryCollectionViewCell.nib(), forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        
        postsTableView.delegate = self
        postsTableView.dataSource = self
        postsTableView.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        
        createStories()
        createPosts()
        
    }
    
    private func createStories() {
        
        for _ in 1...10 {
            stories.append(Story(user: "Rafael", photoAsString: "dog.jpeg"))
        }
        
    }
    
    private func createPosts() {
        
        for _ in 1...10 {
            posts.append(Post(user: "Rafael Nunes", photoAsString: "dog.jpeg", comment: "no comment"))
        }
    }
}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as! StoryCollectionViewCell
        
        cell.setupImage(photo: stories[indexPath.row].photoAsString)
        
        return cell
        
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        
        cell.post = posts[indexPath.row]
        cell.setupPost()
        
        return cell
        
    }
    
}
