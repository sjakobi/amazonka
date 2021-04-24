{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InventoryDeletionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryDeletionStatus
  ( InventoryDeletionStatus
      ( ..,
        Complete,
        InProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InventoryDeletionStatus
  = InventoryDeletionStatus'
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

pattern Complete :: InventoryDeletionStatus
pattern Complete = InventoryDeletionStatus' "Complete"

pattern InProgress :: InventoryDeletionStatus
pattern InProgress = InventoryDeletionStatus' "InProgress"

{-# COMPLETE
  Complete,
  InProgress,
  InventoryDeletionStatus'
  #-}

instance FromText InventoryDeletionStatus where
  parser = (InventoryDeletionStatus' . mk) <$> takeText

instance ToText InventoryDeletionStatus where
  toText (InventoryDeletionStatus' ci) = original ci

instance Hashable InventoryDeletionStatus

instance NFData InventoryDeletionStatus

instance ToByteString InventoryDeletionStatus

instance ToQuery InventoryDeletionStatus

instance ToHeader InventoryDeletionStatus

instance FromJSON InventoryDeletionStatus where
  parseJSON = parseJSONText "InventoryDeletionStatus"
