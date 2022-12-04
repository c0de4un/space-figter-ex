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

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// METHODS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

int main()
{
    std::cout << "Initializing ...\n";

    zLog::Initialize(new zLogger());

    sfGameApp *const game( new sfGameApp() );
    sfGameApp::Initilize(game);

    std::cout << "Terminating ...\n";

    sfGameApp::Terminate();

    zLog::Terminate();

    std::cout << "Press any key to exit\n";
    std::cin.get();

    return 0;
}

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =