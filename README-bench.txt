cpanm FFI::Build::MM FFI::C Test2::V0 YAML::PP YAML::PP::LibYAML
perl Makefile.PL
make test

time perl -I $PWD/blib/arch -I $PWD/blib/lib ./yamlpp-events -M YAML::PP < githubcl-openapi.yaml
time perl -I $PWD/blib/arch -I $PWD/blib/lib ./yamlpp-events -M YAML::PP::LibYAML < githubcl-openapi.yaml
time perl -I $PWD/blib/arch -I $PWD/blib/lib ./yamlpp-events -M LibYAML::FFI::YPP < githubcl-openapi.yaml
