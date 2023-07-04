# Copyright (c) 2023 Fyde Innovations Limited and the openFyde Authors and Alex313031.
# Distributed under the license specified in the root directory of this project.

# Copyright (c) 2018 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="Chrome OS BSP config virtual package"
HOMEPAGE="http://src.chromium.org"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

IUSE=""

DEPEND="chromeos-base/chromeos-config-bsp"
RDEPEND="${DEPEND}"

# TODO(bmgordon): Remove chromeos-base/chromeos-config-bsp once all the
#                 boards using unibuild are adjusted to use virtual package.
