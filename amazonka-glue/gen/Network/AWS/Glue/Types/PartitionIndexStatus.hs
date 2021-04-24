{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.PartitionIndexStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.PartitionIndexStatus
  ( PartitionIndexStatus
      ( ..,
        PISActive,
        PISCreating,
        PISDeleting,
        PISFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PartitionIndexStatus
  = PartitionIndexStatus'
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

pattern PISActive :: PartitionIndexStatus
pattern PISActive = PartitionIndexStatus' "ACTIVE"

pattern PISCreating :: PartitionIndexStatus
pattern PISCreating = PartitionIndexStatus' "CREATING"

pattern PISDeleting :: PartitionIndexStatus
pattern PISDeleting = PartitionIndexStatus' "DELETING"

pattern PISFailed :: PartitionIndexStatus
pattern PISFailed = PartitionIndexStatus' "FAILED"

{-# COMPLETE
  PISActive,
  PISCreating,
  PISDeleting,
  PISFailed,
  PartitionIndexStatus'
  #-}

instance FromText PartitionIndexStatus where
  parser = (PartitionIndexStatus' . mk) <$> takeText

instance ToText PartitionIndexStatus where
  toText (PartitionIndexStatus' ci) = original ci

instance Hashable PartitionIndexStatus

instance NFData PartitionIndexStatus

instance ToByteString PartitionIndexStatus

instance ToQuery PartitionIndexStatus

instance ToHeader PartitionIndexStatus

instance FromJSON PartitionIndexStatus where
  parseJSON = parseJSONText "PartitionIndexStatus"
