//
//  NSURLSession.swift
//  Example
//
//  Created by Thomas Visser on 23/12/14.
//  Copyright (c) 2014 Thomas Visser. All rights reserved.
//

import Foundation
import BrightFutures

extension NSURLSession {
    
    func dataTaskWithRequest(request: NSURLRequest) -> (NSURLSessionDataTask, Future<(NSData!, NSURLResponse!), NSError>) {
        let p = Promise<(NSData!, NSURLResponse!), NSError>()
        
        let task = self.dataTaskWithRequest(request, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    func dataTaskWithURL(url: NSURL) -> (NSURLSessionDataTask, Future<(NSData!, NSURLResponse!), NSError>) {
        let p = Promise<(NSData!, NSURLResponse!), NSError>()
        
        let task = self.dataTaskWithURL(url, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    
    func uploadTaskWithRequest(request: NSURLRequest, fromFile fileURL: NSURL) -> (NSURLSessionUploadTask, Future<(NSData!, NSURLResponse!), NSError>) {
        let p = Promise<(NSData!, NSURLResponse!), NSError>()
        
        let task = self.uploadTaskWithRequest(request, fromFile: fileURL, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    
    func uploadTaskWithRequest(request: NSURLRequest, fromData bodyData: NSData?) -> (NSURLSessionUploadTask, Future<(NSData!, NSURLResponse!), NSError>) {
        let p = Promise<(NSData!, NSURLResponse!), NSError>()
        
        let task = self.uploadTaskWithRequest(request, fromData: bodyData, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    func downloadTaskWithRequest(request: NSURLRequest) -> (NSURLSessionDownloadTask, Future<(NSURL!, NSURLResponse!), NSError>) {
        let p = Promise<(NSURL!, NSURLResponse!), NSError>()
        
        let task = self.downloadTaskWithRequest(request, completionHandler: self.downloadTaskCompletionHandler(promise: p))
        
        return (task, p.future)
    }
    
    func downloadTaskWithURL(url: NSURL) -> (NSURLSessionDownloadTask, Future<(NSURL!, NSURLResponse!), NSError>) {
        let p = Promise<(NSURL!, NSURLResponse!), NSError>()
        
        let task = self.downloadTaskWithURL(url, completionHandler: self.downloadTaskCompletionHandler(promise: p))
        
        return (task, p.future)
    }
    
    func downloadTaskWithResumeData(resumeData: NSData) -> (NSURLSessionDownloadTask, Future<(NSURL!, NSURLResponse!), NSError>) {
        let p = Promise<(NSURL!, NSURLResponse!), NSError>()
        
        let task = self.downloadTaskWithResumeData(resumeData, completionHandler: self.downloadTaskCompletionHandler(promise: p))
        
        return (task, p.future)
    }
    
    
    func completionHandler(promise p: Promise<(NSData!, NSURLResponse!), NSError>) -> (NSData!, NSURLResponse!, NSError!) -> () {
        return { (data, response, error) -> () in
            if error != nil {
                p.failure(error)
            } else {
                p.success(data, response)
            }
        }
    }
    
    func downloadTaskCompletionHandler(promise p: Promise<(NSURL!, NSURLResponse!), NSError>) -> (NSURL!, NSURLResponse!, NSError!) -> () {
        return { (url, response, error) -> () in
            if error != nil {
                p.failure(error)
            } else {
                p.success(url, response)
            }
        }
    }
    
}