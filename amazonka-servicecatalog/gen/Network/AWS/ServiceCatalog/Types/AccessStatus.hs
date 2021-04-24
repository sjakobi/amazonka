{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.AccessStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.AccessStatus
  ( AccessStatus
      ( ..,
        Disabled,
        Enabled,
        UnderChange
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccessStatus = AccessStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: AccessStatus
pattern Disabled = AccessStatus' "DISABLED"

pattern Enabled :: AccessStatus
pattern Enabled = AccessStatus' "ENABLED"

pattern UnderChange :: AccessStatus
pattern UnderChange = AccessStatus' "UNDER_CHANGE"

{-# COMPLETE
  Disabled,
  Enabled,
  UnderChange,
  AccessStatus'
  #-}

instance FromText AccessStatus where
  parser = (AccessStatus' . mk) <$> takeText

instance ToText AccessStatus where
  toText (AccessStatus' ci) = original ci

instance Hashable AccessStatus

instance NFData AccessStatus

instance ToByteString AccessStatus

instance ToQuery AccessStatus

instance ToHeader AccessStatus

instance FromJSON AccessStatus where
  parseJSON = parseJSONText "AccessStatus"
