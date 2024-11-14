module {
    public type Profile = {
        name: Text;
        bio: Text;
        contact: Text;
    };
    
    stable var profile : Profile = {
        name = "Nama Anda";
        bio = "Deskripsi singkat tentang Anda.";
        contact = "kontak@anda.com";
    };
    
    public func setProfile(newProfile: Profile) : async Profile {
        profile := newProfile;
        return profile;
    }

    public func getProfile() : Profile {
        return profile;
    }
}
