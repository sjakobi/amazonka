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
-- Module      : Network.AWS.EC2.Types.AvailabilityZoneOptInStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AvailabilityZoneOptInStatus
  ( AvailabilityZoneOptInStatus
      ( ..,
        AvailabilityZoneOptInStatusNotOptedIn,
        AvailabilityZoneOptInStatusOptInNotRequired,
        AvailabilityZoneOptInStatusOptedIn
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AvailabilityZoneOptInStatus = AvailabilityZoneOptInStatus'
  { fromAvailabilityZoneOptInStatus ::
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

pattern AvailabilityZoneOptInStatusNotOptedIn :: AvailabilityZoneOptInStatus
pattern AvailabilityZoneOptInStatusNotOptedIn = AvailabilityZoneOptInStatus' "not-opted-in"

pattern AvailabilityZoneOptInStatusOptInNotRequired :: AvailabilityZoneOptInStatus
pattern AvailabilityZoneOptInStatusOptInNotRequired = AvailabilityZoneOptInStatus' "opt-in-not-required"

pattern AvailabilityZoneOptInStatusOptedIn :: AvailabilityZoneOptInStatus
pattern AvailabilityZoneOptInStatusOptedIn = AvailabilityZoneOptInStatus' "opted-in"

{-# COMPLETE
  AvailabilityZoneOptInStatusNotOptedIn,
  AvailabilityZoneOptInStatusOptInNotRequired,
  AvailabilityZoneOptInStatusOptedIn,
  AvailabilityZoneOptInStatus'
  #-}

instance Prelude.FromText AvailabilityZoneOptInStatus where
  parser = AvailabilityZoneOptInStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvailabilityZoneOptInStatus where
  toText (AvailabilityZoneOptInStatus' x) = x

instance Prelude.Hashable AvailabilityZoneOptInStatus

instance Prelude.NFData AvailabilityZoneOptInStatus

instance Prelude.ToByteString AvailabilityZoneOptInStatus

instance Prelude.ToQuery AvailabilityZoneOptInStatus

instance Prelude.ToHeader AvailabilityZoneOptInStatus

instance Prelude.FromXML AvailabilityZoneOptInStatus where
  parseXML = Prelude.parseXMLText "AvailabilityZoneOptInStatus"
