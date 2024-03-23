import Vapor
import Plot

func routes(_ app: Application) throws {
    app.get { req -> EventLoopFuture<HTML> in
        return Base().with {
            HomePage()
        }
        .environmentValue(.home, key: .selectedPageID)
        .encodeResponse(for: req)
    }
    
    app.get("projects") { req -> EventLoopFuture<HTML> in
        let projects = ProjectManager.shared.fetch()
        return Base().with {
            ProjectsPage(projects: projects)
        }
        .environmentValue(.projects, key: .selectedPageID)
        .encodeResponse(for: req)
    }
    
    app.get("cv") { req -> EventLoopFuture<HTML> in
        return Base().with {
            CvPage()
        }
        .environmentValue(.cv, key: .selectedPageID)
        .encodeResponse(for: req)
    }
    
    app.get("contact") { req -> EventLoopFuture<HTML> in
        return Base().with {
            ContactPage()
        }
        .environmentValue(.contact, key: .selectedPageID)
        .encodeResponse(for: req)
    }
}
