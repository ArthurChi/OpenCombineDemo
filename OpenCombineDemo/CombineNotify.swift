//
//  CombineNotify.swift
//  OpenCombineDemo
//
//  Created by VassilyChi on 2021/7/8.
//

import Foundation

import OpenCombine

public class CombineNotify<Output> {
    
    private let subject = PassthroughSubject<Output, Never>()
    
    public init() {}
    
    deinit {
        subject.send(completion: .finished)
    }
    
    public func notify(obj value: Output) { subject.send(value) }
    
    public func listen(_ receiveValue: @escaping (Output) -> Void) -> AnyCancellable {
        return AnyCancellable(subject.sink(receiveValue: receiveValue))
    }
}
