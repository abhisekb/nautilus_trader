# -------------------------------------------------------------------------------------------------
#  Copyright (C) 2015-2020 Nautech Systems Pty Ltd. All rights reserved.
#  https://nautechsystems.io
#
#  Licensed under the GNU Lesser General Public License Version 3.0 (the "License");
#  You may not use this file except in compliance with the License.
#  You may obtain a copy of the License at https://www.gnu.org/licenses/lgpl-3.0.en.html
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# -------------------------------------------------------------------------------------------------

from nautilus_trader.common.uuid cimport UUIDFactory
from nautilus_trader.core.uuid cimport UUID
from nautilus_trader.core.uuid cimport uuid4


cdef class TestUUIDFactory(UUIDFactory):
    """
    Provides a fake UUID factory for testing purposes.
    """
    __test__ = False

    def __init__(self):
        """
        Initialize a new instance of the TestUUIDFactory class.
        """
        super().__init__()

        self._uuid = uuid4()

    cpdef UUID generate(self):
        """
        Return the single test uuid4 instance.

        Returns
        -------
        UUID

        """
        return self._uuid