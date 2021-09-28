-- |
-- Module      : Network.AWS.Lens
-- Copyright   : (c) 2013-2018 Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lens
    ( module Ty
    , module Fn
    , module Op
    ) where

import           Control.Lens           as Ty (Iso', Lens')
import           Control.Lens           as Fn (iso, lens, mapping)
import           Control.Lens           as Op (( # ))
