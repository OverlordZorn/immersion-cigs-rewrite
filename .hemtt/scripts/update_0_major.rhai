// Read the current contents of script_version.hpp
let script_version = HEMTT_RFS.join("addons")
    .join("main")
    .join("script_version.hpp")
    .open_file()
    .read();

// Replace the current version with the new version
let prefix = "#define MAJOR ";
let current = HEMTT.project().version().major();
let next = current + 1;
script_version.replace("#define MAJOR " + current.to_string(),"#define MAJOR " + next.to_string());

print(script_version);

// Updating major version should reset minor number
current = HEMTT.project().version().minor();
script_version.replace("#define MINOR " + current.to_string(), "#define MINOR 0");

// Updating minor version should reset patch number
current = HEMTT.project().version().patch();
script_version.replace("#define PATCH " + current.to_string(), "#define PATCH 0");

// Write the modified contents to script_version.hpp
HEMTT_RFS.join("addons")
    .join("main")
    .join("script_version.hpp")
    .create_file()
    .write(script_version);