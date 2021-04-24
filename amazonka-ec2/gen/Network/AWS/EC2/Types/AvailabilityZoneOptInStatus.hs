{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AvailabilityZoneOptInStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AvailabilityZoneOptInStatus
  ( AvailabilityZoneOptInStatus
      ( ..,
        NotOptedIn,
        OptInNotRequired,
        OptedIn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AvailabilityZoneOptInStatus
  = AvailabilityZoneOptInStatus'
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

pattern NotOptedIn :: AvailabilityZoneOptInStatus
pattern NotOptedIn = AvailabilityZoneOptInStatus' "not-opted-in"

pattern OptInNotRequired :: AvailabilityZoneOptInStatus
pattern OptInNotRequired = AvailabilityZoneOptInStatus' "opt-in-not-required"

pattern OptedIn :: AvailabilityZoneOptInStatus
pattern OptedIn = AvailabilityZoneOptInStatus' "opted-in"

{-# COMPLETE
  NotOptedIn,
  OptInNotRequired,
  OptedIn,
  AvailabilityZoneOptInStatus'
  #-}

instance FromText AvailabilityZoneOptInStatus where
  parser = (AvailabilityZoneOptInStatus' . mk) <$> takeText

instance ToText AvailabilityZoneOptInStatus where
  toText (AvailabilityZoneOptInStatus' ci) = original ci

instance Hashable AvailabilityZoneOptInStatus

instance NFData AvailabilityZoneOptInStatus

instance ToByteString AvailabilityZoneOptInStatus

instance ToQuery AvailabilityZoneOptInStatus

instance ToHeader AvailabilityZoneOptInStatus

instance FromXML AvailabilityZoneOptInStatus where
  parseXML = parseXMLText "AvailabilityZoneOptInStatus"
