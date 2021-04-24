{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ModifyAvailabilityZoneOptInStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ModifyAvailabilityZoneOptInStatus
  ( ModifyAvailabilityZoneOptInStatus
      ( ..,
        MAZOISNotOptedIn,
        MAZOISOptedIn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ModifyAvailabilityZoneOptInStatus
  = ModifyAvailabilityZoneOptInStatus'
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

pattern MAZOISNotOptedIn :: ModifyAvailabilityZoneOptInStatus
pattern MAZOISNotOptedIn = ModifyAvailabilityZoneOptInStatus' "not-opted-in"

pattern MAZOISOptedIn :: ModifyAvailabilityZoneOptInStatus
pattern MAZOISOptedIn = ModifyAvailabilityZoneOptInStatus' "opted-in"

{-# COMPLETE
  MAZOISNotOptedIn,
  MAZOISOptedIn,
  ModifyAvailabilityZoneOptInStatus'
  #-}

instance FromText ModifyAvailabilityZoneOptInStatus where
  parser = (ModifyAvailabilityZoneOptInStatus' . mk) <$> takeText

instance ToText ModifyAvailabilityZoneOptInStatus where
  toText (ModifyAvailabilityZoneOptInStatus' ci) = original ci

instance Hashable ModifyAvailabilityZoneOptInStatus

instance NFData ModifyAvailabilityZoneOptInStatus

instance ToByteString ModifyAvailabilityZoneOptInStatus

instance ToQuery ModifyAvailabilityZoneOptInStatus

instance ToHeader ModifyAvailabilityZoneOptInStatus
