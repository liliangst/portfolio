import Vapor
import Plot

func routes(_ app: Application) throws {
    app.get { req -> EventLoopFuture<HTML> in
        return Base().with {
            IndexPage()
        }.encodeResponse(for: req)
    }
    
    app.get("projects") { req -> EventLoopFuture<HTML> in
        return Base().with {
            ProjectsPage()
        }.encodeResponse(for: req)
    }
    
    app.get("cv") { req -> EventLoopFuture<HTML> in
        return Base().with {
            CvPage()
        }.encodeResponse(for: req)
    }
    
    app.get("contact") { req -> EventLoopFuture<HTML> in
        return Base().with {
            ContactPage()
        }.encodeResponse(for: req)
    }
}
