{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.ThreatIntelSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.ThreatIntelSetStatus
  ( ThreatIntelSetStatus
      ( ..,
        TISSActivating,
        TISSActive,
        TISSDeactivating,
        TISSDeletePending,
        TISSDeleted,
        TISSError',
        TISSInactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ThreatIntelSetStatus
  = ThreatIntelSetStatus'
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

pattern TISSActivating :: ThreatIntelSetStatus
pattern TISSActivating = ThreatIntelSetStatus' "ACTIVATING"

pattern TISSActive :: ThreatIntelSetStatus
pattern TISSActive = ThreatIntelSetStatus' "ACTIVE"

pattern TISSDeactivating :: ThreatIntelSetStatus
pattern TISSDeactivating = ThreatIntelSetStatus' "DEACTIVATING"

pattern TISSDeletePending :: ThreatIntelSetStatus
pattern TISSDeletePending = ThreatIntelSetStatus' "DELETE_PENDING"

pattern TISSDeleted :: ThreatIntelSetStatus
pattern TISSDeleted = ThreatIntelSetStatus' "DELETED"

pattern TISSError' :: ThreatIntelSetStatus
pattern TISSError' = ThreatIntelSetStatus' "ERROR"

pattern TISSInactive :: ThreatIntelSetStatus
pattern TISSInactive = ThreatIntelSetStatus' "INACTIVE"

{-# COMPLETE
  TISSActivating,
  TISSActive,
  TISSDeactivating,
  TISSDeletePending,
  TISSDeleted,
  TISSError',
  TISSInactive,
  ThreatIntelSetStatus'
  #-}

instance FromText ThreatIntelSetStatus where
  parser = (ThreatIntelSetStatus' . mk) <$> takeText

instance ToText ThreatIntelSetStatus where
  toText (ThreatIntelSetStatus' ci) = original ci

instance Hashable ThreatIntelSetStatus

instance NFData ThreatIntelSetStatus

instance ToByteString ThreatIntelSetStatus

instance ToQuery ThreatIntelSetStatus

instance ToHeader ThreatIntelSetStatus

instance FromJSON ThreatIntelSetStatus where
  parseJSON = parseJSONText "ThreatIntelSetStatus"
