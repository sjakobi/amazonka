{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OfflineStoreStatusValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OfflineStoreStatusValue
  ( OfflineStoreStatusValue
      ( ..,
        Active,
        Blocked,
        Disabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OfflineStoreStatusValue
  = OfflineStoreStatusValue'
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

pattern Active :: OfflineStoreStatusValue
pattern Active = OfflineStoreStatusValue' "Active"

pattern Blocked :: OfflineStoreStatusValue
pattern Blocked = OfflineStoreStatusValue' "Blocked"

pattern Disabled :: OfflineStoreStatusValue
pattern Disabled = OfflineStoreStatusValue' "Disabled"

{-# COMPLETE
  Active,
  Blocked,
  Disabled,
  OfflineStoreStatusValue'
  #-}

instance FromText OfflineStoreStatusValue where
  parser = (OfflineStoreStatusValue' . mk) <$> takeText

instance ToText OfflineStoreStatusValue where
  toText (OfflineStoreStatusValue' ci) = original ci

instance Hashable OfflineStoreStatusValue

instance NFData OfflineStoreStatusValue

instance ToByteString OfflineStoreStatusValue

instance ToQuery OfflineStoreStatusValue

instance ToHeader OfflineStoreStatusValue

instance ToJSON OfflineStoreStatusValue where
  toJSON = toJSONText

instance FromJSON OfflineStoreStatusValue where
  parseJSON = parseJSONText "OfflineStoreStatusValue"
