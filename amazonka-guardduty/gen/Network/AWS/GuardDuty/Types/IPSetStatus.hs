{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.IPSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.IPSetStatus
  ( IPSetStatus
      ( ..,
        Activating,
        Active,
        Deactivating,
        DeletePending,
        Deleted,
        Error',
        Inactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPSetStatus = IPSetStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Activating :: IPSetStatus
pattern Activating = IPSetStatus' "ACTIVATING"

pattern Active :: IPSetStatus
pattern Active = IPSetStatus' "ACTIVE"

pattern Deactivating :: IPSetStatus
pattern Deactivating = IPSetStatus' "DEACTIVATING"

pattern DeletePending :: IPSetStatus
pattern DeletePending = IPSetStatus' "DELETE_PENDING"

pattern Deleted :: IPSetStatus
pattern Deleted = IPSetStatus' "DELETED"

pattern Error' :: IPSetStatus
pattern Error' = IPSetStatus' "ERROR"

pattern Inactive :: IPSetStatus
pattern Inactive = IPSetStatus' "INACTIVE"

{-# COMPLETE
  Activating,
  Active,
  Deactivating,
  DeletePending,
  Deleted,
  Error',
  Inactive,
  IPSetStatus'
  #-}

instance FromText IPSetStatus where
  parser = (IPSetStatus' . mk) <$> takeText

instance ToText IPSetStatus where
  toText (IPSetStatus' ci) = original ci

instance Hashable IPSetStatus

instance NFData IPSetStatus

instance ToByteString IPSetStatus

instance ToQuery IPSetStatus

instance ToHeader IPSetStatus

instance FromJSON IPSetStatus where
  parseJSON = parseJSONText "IPSetStatus"
