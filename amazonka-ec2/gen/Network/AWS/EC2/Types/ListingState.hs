{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ListingState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ListingState
  ( ListingState
      ( ..,
        LAvailable,
        LCancelled,
        LPending,
        LSold
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ListingState = ListingState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LAvailable :: ListingState
pattern LAvailable = ListingState' "available"

pattern LCancelled :: ListingState
pattern LCancelled = ListingState' "cancelled"

pattern LPending :: ListingState
pattern LPending = ListingState' "pending"

pattern LSold :: ListingState
pattern LSold = ListingState' "sold"

{-# COMPLETE
  LAvailable,
  LCancelled,
  LPending,
  LSold,
  ListingState'
  #-}

instance FromText ListingState where
  parser = (ListingState' . mk) <$> takeText

instance ToText ListingState where
  toText (ListingState' ci) = original ci

instance Hashable ListingState

instance NFData ListingState

instance ToByteString ListingState

instance ToQuery ListingState

instance ToHeader ListingState

instance FromXML ListingState where
  parseXML = parseXMLText "ListingState"
