{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.DestinationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.DestinationStatus
  ( DestinationStatus
      ( ..,
        DSActive,
        DSDisabled,
        DSDisabling,
        DSEnableFailed,
        DSEnabling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DestinationStatus = DestinationStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSActive :: DestinationStatus
pattern DSActive = DestinationStatus' "ACTIVE"

pattern DSDisabled :: DestinationStatus
pattern DSDisabled = DestinationStatus' "DISABLED"

pattern DSDisabling :: DestinationStatus
pattern DSDisabling = DestinationStatus' "DISABLING"

pattern DSEnableFailed :: DestinationStatus
pattern DSEnableFailed = DestinationStatus' "ENABLE_FAILED"

pattern DSEnabling :: DestinationStatus
pattern DSEnabling = DestinationStatus' "ENABLING"

{-# COMPLETE
  DSActive,
  DSDisabled,
  DSDisabling,
  DSEnableFailed,
  DSEnabling,
  DestinationStatus'
  #-}

instance FromText DestinationStatus where
  parser = (DestinationStatus' . mk) <$> takeText

instance ToText DestinationStatus where
  toText (DestinationStatus' ci) = original ci

instance Hashable DestinationStatus

instance NFData DestinationStatus

instance ToByteString DestinationStatus

instance ToQuery DestinationStatus

instance ToHeader DestinationStatus

instance FromJSON DestinationStatus where
  parseJSON = parseJSONText "DestinationStatus"
