{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocationType
  ( LocationType
      ( ..,
        LocationTypeAvailabilityZone,
        LocationTypeAvailabilityZoneId,
        LocationTypeRegion
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LocationType = LocationType'
  { fromLocationType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern LocationTypeAvailabilityZone :: LocationType
pattern LocationTypeAvailabilityZone = LocationType' "availability-zone"

pattern LocationTypeAvailabilityZoneId :: LocationType
pattern LocationTypeAvailabilityZoneId = LocationType' "availability-zone-id"

pattern LocationTypeRegion :: LocationType
pattern LocationTypeRegion = LocationType' "region"

{-# COMPLETE
  LocationTypeAvailabilityZone,
  LocationTypeAvailabilityZoneId,
  LocationTypeRegion,
  LocationType'
  #-}

instance Prelude.FromText LocationType where
  parser = LocationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LocationType where
  toText (LocationType' x) = x

instance Prelude.Hashable LocationType

instance Prelude.NFData LocationType

instance Prelude.ToByteString LocationType

instance Prelude.ToQuery LocationType

instance Prelude.ToHeader LocationType

instance Prelude.FromXML LocationType where
  parseXML = Prelude.parseXMLText "LocationType"
