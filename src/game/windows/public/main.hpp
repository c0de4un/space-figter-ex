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

// Include zEngine.Core
#include <zero/core/zero.hpp>

// Include zEngine.Windows
#include <zero/windows/zero_win.hpp>

// Include zero::core::WinLogger
#include <zero/windows/metrics/log/WinLogger.hpp>

// Include zero::core::MemoryManager
#ifndef ZERO_CORE_MEMORY_MANAGER_HPP
#include <zero/core/memory/MemoryManager.hpp>
#endif /// !ZERO_CORE_MEMORY_MANAGER_HPP

// Include zero::ecs
#ifndef ZERO_ECS_HPP
#include <zero/core/ecs/ecs.hpp>
#endif /// !ZERO_ECS_HPP

// Include GameApp
#include "../../core/public/game/core/app/GameApp.hpp"

// Include STL
#include <iostream>

// Include zero::win::WinGraphics

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =