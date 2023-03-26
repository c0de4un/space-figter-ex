/**
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
**/

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// INCLUDES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// HEADER
#include "../public/main.hpp"
#include <GLFW/glfw3.h>
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// METHODS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

void start()
{
#ifdef ZERO_DEBUG /// DEBUG
    std::cout << "Initializing ...\n";
#endif /// DEBUG

    // Guarded-Block
    try
    {
        // Log
        zLog::Initialize(new zLogger());

        // Memory
        zMemory::Initialize();

        // ECS
        zECS::Initialize();

        // Game
        sfGameApp *const game( new sfGameApp() );
        sfGameApp::Initilize(game);

        // Engine

        // Windows Graphics

        // Windows Audio

        // Windows Input

        // Start Game
        game->Start();
    }
    catch (std::exception& err)
    {
#ifdef ZERO_DEBUG /// DEBUG
        std::cout << "main::start: error: " << err.what() << std::endl;
#endif /// DEBUG
    }
    catch (...)
    {
#ifdef ZERO_DEBUG /// DEBUG
        std::cout << "main::start: uknown error\n";
#endif /// DEBUG
    }

#ifdef ZERO_DEBUG /// DEBUG
    std::cout << "Initialized ...\n";
#endif /// !DEBUG
}

void stop()
{
    std::cout << "Terminating ...\n";

    // Guarded-Block
    try
    {
        // Game
        sfGameApp::Terminate();

        // ECS
        zECS::Terminate();

        // Memory
        zMemory::Terminate();

        // Log
        zLog::Terminate();
    }
    catch (std::exception& err)
    {
#ifdef ZERO_DEBUG /// DEBUG
        std::cout << "main::stop: error: " << err.what() << std::endl;
#endif /// DEBUG
    }
    catch (...)
    {
#ifdef ZERO_DEBUG /// DEBUG
        std::cout << "main::stop: uknown error\n";
#endif /// DEBUG
    }

#ifdef ZERO_DEBUG /// DEBUG
    std::cout << "Terminated ...\n";
#endif /// DEBUG
}

int main()
{
    start();

    stop();

#ifdef ZERO_DEBUG /// DEBUG
    std::cout << "Press any key to exit\n";
#endif /// DEBUG
    std::cin.get();

    return 0;
}

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =