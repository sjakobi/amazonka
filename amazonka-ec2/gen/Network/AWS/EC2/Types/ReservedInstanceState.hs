{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReservedInstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReservedInstanceState
  ( ReservedInstanceState
      ( ..,
        RISActive,
        RISPaymentFailed,
        RISPaymentPending,
        RISQueued,
        RISQueuedDeleted,
        RISRetired
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ReservedInstanceState
  = ReservedInstanceState'
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

pattern RISActive :: ReservedInstanceState
pattern RISActive = ReservedInstanceState' "active"

pattern RISPaymentFailed :: ReservedInstanceState
pattern RISPaymentFailed = ReservedInstanceState' "payment-failed"

pattern RISPaymentPending :: ReservedInstanceState
pattern RISPaymentPending = ReservedInstanceState' "payment-pending"

pattern RISQueued :: ReservedInstanceState
pattern RISQueued = ReservedInstanceState' "queued"

pattern RISQueuedDeleted :: ReservedInstanceState
pattern RISQueuedDeleted = ReservedInstanceState' "queued-deleted"

pattern RISRetired :: ReservedInstanceState
pattern RISRetired = ReservedInstanceState' "retired"

{-# COMPLETE
  RISActive,
  RISPaymentFailed,
  RISPaymentPending,
  RISQueued,
  RISQueuedDeleted,
  RISRetired,
  ReservedInstanceState'
  #-}

instance FromText ReservedInstanceState where
  parser = (ReservedInstanceState' . mk) <$> takeText

instance ToText ReservedInstanceState where
  toText (ReservedInstanceState' ci) = original ci

instance Hashable ReservedInstanceState

instance NFData ReservedInstanceState

instance ToByteString ReservedInstanceState

instance ToQuery ReservedInstanceState

instance ToHeader ReservedInstanceState

instance FromXML ReservedInstanceState where
  parseXML = parseXMLText "ReservedInstanceState"
