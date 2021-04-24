{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DynamicGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DynamicGroupStatus
  ( DynamicGroupStatus
      ( ..,
        DGSActive,
        DGSBuilding,
        DGSRebuilding
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DynamicGroupStatus
  = DynamicGroupStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DGSActive :: DynamicGroupStatus
pattern DGSActive = DynamicGroupStatus' "ACTIVE"

pattern DGSBuilding :: DynamicGroupStatus
pattern DGSBuilding = DynamicGroupStatus' "BUILDING"

pattern DGSRebuilding :: DynamicGroupStatus
pattern DGSRebuilding = DynamicGroupStatus' "REBUILDING"

{-# COMPLETE
  DGSActive,
  DGSBuilding,
  DGSRebuilding,
  DynamicGroupStatus'
  #-}

instance FromText DynamicGroupStatus where
  parser = (DynamicGroupStatus' . mk) <$> takeText

instance ToText DynamicGroupStatus where
  toText (DynamicGroupStatus' ci) = original ci

instance Hashable DynamicGroupStatus

instance NFData DynamicGroupStatus

instance ToByteString DynamicGroupStatus

instance ToQuery DynamicGroupStatus

instance ToHeader DynamicGroupStatus

instance FromJSON DynamicGroupStatus where
  parseJSON = parseJSONText "DynamicGroupStatus"
