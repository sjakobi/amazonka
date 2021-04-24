{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AvailabilityZoneState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AvailabilityZoneState
  ( AvailabilityZoneState
      ( ..,
        AZSAvailable,
        AZSImpaired,
        AZSInformation,
        AZSUnavailable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AvailabilityZoneState
  = AvailabilityZoneState'
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

pattern AZSAvailable :: AvailabilityZoneState
pattern AZSAvailable = AvailabilityZoneState' "available"

pattern AZSImpaired :: AvailabilityZoneState
pattern AZSImpaired = AvailabilityZoneState' "impaired"

pattern AZSInformation :: AvailabilityZoneState
pattern AZSInformation = AvailabilityZoneState' "information"

pattern AZSUnavailable :: AvailabilityZoneState
pattern AZSUnavailable = AvailabilityZoneState' "unavailable"

{-# COMPLETE
  AZSAvailable,
  AZSImpaired,
  AZSInformation,
  AZSUnavailable,
  AvailabilityZoneState'
  #-}

instance FromText AvailabilityZoneState where
  parser = (AvailabilityZoneState' . mk) <$> takeText

instance ToText AvailabilityZoneState where
  toText (AvailabilityZoneState' ci) = original ci

instance Hashable AvailabilityZoneState

instance NFData AvailabilityZoneState

instance ToByteString AvailabilityZoneState

instance ToQuery AvailabilityZoneState

instance ToHeader AvailabilityZoneState

instance FromXML AvailabilityZoneState where
  parseXML = parseXMLText "AvailabilityZoneState"
