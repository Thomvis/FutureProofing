//
//  URLSession.swift
//  Example
//
//  Created by Thomas Visser on 23/12/14.
//  Copyright (c) 2014 Thomas Visser. All rights reserved.
//

import Foundation
import BrightFutures

extension URLSession {
    public typealias FutureSessionDataTask = (URLSessionDataTask, Future<(Data?, URLResponse?), AnyError>)
    public typealias FutureSessionUploadTask = (URLSessionUploadTask, Future<(Data?, URLResponse?), AnyError>)
    public typealias FutureSessionDownloadTask = (URLSessionDownloadTask, Future<(URL?, URLResponse?), AnyError>)
    
    open func dataTask(with request: URLRequest) -> FutureSessionDataTask {
        let p = Promise<(Data?, URLResponse?), AnyError>()
        
        let task = self.dataTask(with: request, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    open func dataTask(with url: URL) -> FutureSessionDataTask {
        let p = Promise<(Data?, URLResponse?), AnyError>()
        
        let task = self.dataTask(with: url, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    
    open func uploadTask(with request: URLRequest, fromFile fileURL: URL) -> FutureSessionUploadTask {
        let p = Promise<(Data?, URLResponse?), AnyError>()
        
        let task = self.uploadTask(with: request, fromFile: fileURL as URL, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    
    open func uploadTask(with request: URLRequest, from bodyData: Data?) -> FutureSessionUploadTask {
        let p = Promise<(Data?, URLResponse?), AnyError>()
        
        let task = self.uploadTask(with: request, from: bodyData, completionHandler: self.completionHandler(promise: p))
        
        return (task, p.future)
    }
    
    open func downloadTask(with request: URLRequest) -> FutureSessionDownloadTask {
        let p = Promise<(URL?, URLResponse?), AnyError>()
        
        let task = self.downloadTask(with: request, completionHandler: self.downloadTaskCompletionHandler(promise: p))
        
        return (task, p.future)
    }
    
    open func downloadTask(with url: URL) -> FutureSessionDownloadTask {
        let p = Promise<(URL?, URLResponse?), AnyError>()
        
        let task = self.downloadTask(with:url, completionHandler: self.downloadTaskCompletionHandler(promise: p))
        
        return (task, p.future)
    }

    open func downloadTask(withResumeData resumeData: Data) -> FutureSessionDownloadTask {
        let p = Promise<(URL?, URLResponse?), AnyError>()
        
        let task = self.downloadTask(withResumeData: resumeData, completionHandler: self.downloadTaskCompletionHandler(promise: p))
        
        return (task, p.future)
    }
    
    
    open func completionHandler(promise p: Promise<(Data?, URLResponse?), AnyError>) -> (Data?, URLResponse?, Error?) -> Void {
        return { (data, response, error) -> () in
            if let error = error {
                p.failure(AnyError(cause: error))
            } else {
                p.success(data, response)
            }
        }
    }
    
    open func downloadTaskCompletionHandler(promise p: Promise<(URL?, URLResponse?), AnyError>) -> (URL?, URLResponse?, Error?) -> Void {
        return { (url, response, error) -> () in
            if let error = error {
                p.failure(AnyError(cause: error))
            } else {
                p.success(url, response)
            }
        }
    }
    
}
