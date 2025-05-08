@echo off

set ClassFold=..\Class\Out\Class

pushd %ClassFold%
class Media.Demo-0.00.00
echo Status: %errorlevel%
popd