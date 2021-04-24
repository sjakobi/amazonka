{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.PoolStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.PoolStatus
  ( PoolStatus
      ( ..,
        Active,
        Deleted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PoolStatus = PoolStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: PoolStatus
pattern Active = PoolStatus' "ACTIVE"

pattern Deleted :: PoolStatus
pattern Deleted = PoolStatus' "DELETED"

{-# COMPLETE
  Active,
  Deleted,
  PoolStatus'
  #-}

instance FromText PoolStatus where
  parser = (PoolStatus' . mk) <$> takeText

instance ToText PoolStatus where
  toText (PoolStatus' ci) = original ci

instance Hashable PoolStatus

instance NFData PoolStatus

instance ToByteString PoolStatus

instance ToQuery PoolStatus

instance ToHeader PoolStatus

instance FromJSON PoolStatus where
  parseJSON = parseJSONText "PoolStatus"
