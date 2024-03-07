//
//  HTML+Extension.swift
//
//
//  Created by Lilian Grasset on 07/03/2024.
//
import Vapor
import Plot

extension HTML: ResponseEncodable {
    public func encodeResponse(for request: Request) -> EventLoopFuture<HTML> {
        request.eventLoop.submit{self}
    }
    
    public func encodeResponse(for req: Request) -> EventLoopFuture<Response> {
        let res = Response(headers: ["content-type": "text/html; charset=utf-8"], body: .init(string: self.render()))
        return res.encodeResponse(for: req)
    }
}
