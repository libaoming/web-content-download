# web-content-download


### web-view download

```swift
 if let url = URL(string: "https://www.apple.com") {
            
         webview.loadRequest(URLRequest(url: url))
            
        }
```


### URLSession dataTask

```swift
if let url = URL(string: "http://stackoverflow.com") {
            
            let request = URLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request) {
                data, response, error in
                
                if error != nil {
                    print(error)
                }else {
                    if let unwrappedData = data {
                        
                        let dataStr = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataStr)
                        
                        DispatchQueue.main.sync {
                            
                        }
                    }
                
                }
            }
            task.resume()
        }

```
