{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.IndexStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.IndexStatus
  ( IndexStatus
      ( ..,
        ISActive,
        ISCreating,
        ISDeleting,
        ISUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IndexStatus = IndexStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISActive :: IndexStatus
pattern ISActive = IndexStatus' "ACTIVE"

pattern ISCreating :: IndexStatus
pattern ISCreating = IndexStatus' "CREATING"

pattern ISDeleting :: IndexStatus
pattern ISDeleting = IndexStatus' "DELETING"

pattern ISUpdating :: IndexStatus
pattern ISUpdating = IndexStatus' "UPDATING"

{-# COMPLETE
  ISActive,
  ISCreating,
  ISDeleting,
  ISUpdating,
  IndexStatus'
  #-}

instance FromText IndexStatus where
  parser = (IndexStatus' . mk) <$> takeText

instance ToText IndexStatus where
  toText (IndexStatus' ci) = original ci

instance Hashable IndexStatus

instance NFData IndexStatus

instance ToByteString IndexStatus

instance ToQuery IndexStatus

instance ToHeader IndexStatus

instance FromJSON IndexStatus where
  parseJSON = parseJSONText "IndexStatus"
