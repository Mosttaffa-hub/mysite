module {
    public type Project = {
        id: Nat;
        name: Text;
        description: Text;
        url: Text;
    };

    stable var projects: [Project] = [];
    stable var projectIdCounter: Nat = 0;

    public func addProject(name: Text, description: Text, url: Text) : async Project {
        let newProject: Project = {
            id = projectIdCounter;
            name = name;
            description = description;
            url = url;
        };
        projects := projects # [newProject];
        projectIdCounter += 1;
        return newProject;
    }

    public func getProjects() : [Project] {
        return projects;
    }
}
