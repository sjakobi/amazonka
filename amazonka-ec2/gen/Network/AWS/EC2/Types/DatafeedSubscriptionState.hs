{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DatafeedSubscriptionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DatafeedSubscriptionState
  ( DatafeedSubscriptionState
      ( ..,
        DSSActive,
        DSSInactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DatafeedSubscriptionState
  = DatafeedSubscriptionState'
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

pattern DSSActive :: DatafeedSubscriptionState
pattern DSSActive = DatafeedSubscriptionState' "Active"

pattern DSSInactive :: DatafeedSubscriptionState
pattern DSSInactive = DatafeedSubscriptionState' "Inactive"

{-# COMPLETE
  DSSActive,
  DSSInactive,
  DatafeedSubscriptionState'
  #-}

instance FromText DatafeedSubscriptionState where
  parser = (DatafeedSubscriptionState' . mk) <$> takeText

instance ToText DatafeedSubscriptionState where
  toText (DatafeedSubscriptionState' ci) = original ci

instance Hashable DatafeedSubscriptionState

instance NFData DatafeedSubscriptionState

instance ToByteString DatafeedSubscriptionState

instance ToQuery DatafeedSubscriptionState

instance ToHeader DatafeedSubscriptionState

instance FromXML DatafeedSubscriptionState where
  parseXML = parseXMLText "DatafeedSubscriptionState"
