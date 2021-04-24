{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetStatus
  ( DatasetStatus
      ( ..,
        DActive,
        DCreating,
        DDeleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DatasetStatus = DatasetStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DActive :: DatasetStatus
pattern DActive = DatasetStatus' "ACTIVE"

pattern DCreating :: DatasetStatus
pattern DCreating = DatasetStatus' "CREATING"

pattern DDeleting :: DatasetStatus
pattern DDeleting = DatasetStatus' "DELETING"

{-# COMPLETE
  DActive,
  DCreating,
  DDeleting,
  DatasetStatus'
  #-}

instance FromText DatasetStatus where
  parser = (DatasetStatus' . mk) <$> takeText

instance ToText DatasetStatus where
  toText (DatasetStatus' ci) = original ci

instance Hashable DatasetStatus

instance NFData DatasetStatus

instance ToByteString DatasetStatus

instance ToQuery DatasetStatus

instance ToHeader DatasetStatus

instance FromJSON DatasetStatus where
  parseJSON = parseJSONText "DatasetStatus"
