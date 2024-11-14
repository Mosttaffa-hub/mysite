import Nat "mo:base/Nat";
import Profile "Profile";
import Project "Project";

actor Main {
    
    stable var siteTitle : Text = "Situs Pribadi";
    
    public func setSiteTitle(newTitle : Text) : async Text {
        siteTitle := newTitle;
        return siteTitle;
    }

    public func getSiteTitle() : async Text {
        return siteTitle;
    }
    
    public func getProfile() : async Profile.Profile {
        return Profile.getProfile();
    }

    public func getProjects() : async [Project.Project] {
        return Project.getProjects();
    }

    public func addProject(name: Text, description: Text, url: Text) : async Project.Project {
        return Project.addProject(name, description, url);
    }
}
