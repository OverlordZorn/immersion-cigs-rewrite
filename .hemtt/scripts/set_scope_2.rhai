let content = "#define _DEBUG_SCOPE_ 2\n";

// Write the modified contents to script_version.hpp
HEMTT_RFS.join("addons")
    .join("main")
    .join("debug_scope.hpp")
    .create_file()
    .write(content);