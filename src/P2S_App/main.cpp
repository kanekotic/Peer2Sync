#include <iostream>
#include <memory>
#include "CrowServer.h"
#include "IServer.h"

using namespace std;
using namespace P2S::App;

int main()
{
    std::unique_ptr<IServer> server = std::make_unique<CrowServer>();
    server->Subscribe("/", HTTPMethod::POST, [](){});
    server->Start(8080);
}
