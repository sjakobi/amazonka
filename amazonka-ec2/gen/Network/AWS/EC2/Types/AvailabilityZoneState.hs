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
-- Module      : Network.AWS.EC2.Types.AvailabilityZoneState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AvailabilityZoneState
  ( AvailabilityZoneState
      ( ..,
        AvailabilityZoneStateAvailable,
        AvailabilityZoneStateImpaired,
        AvailabilityZoneStateInformation,
        AvailabilityZoneStateUnavailable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AvailabilityZoneState = AvailabilityZoneState'
  { fromAvailabilityZoneState ::
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

pattern AvailabilityZoneStateAvailable :: AvailabilityZoneState
pattern AvailabilityZoneStateAvailable = AvailabilityZoneState' "available"

pattern AvailabilityZoneStateImpaired :: AvailabilityZoneState
pattern AvailabilityZoneStateImpaired = AvailabilityZoneState' "impaired"

pattern AvailabilityZoneStateInformation :: AvailabilityZoneState
pattern AvailabilityZoneStateInformation = AvailabilityZoneState' "information"

pattern AvailabilityZoneStateUnavailable :: AvailabilityZoneState
pattern AvailabilityZoneStateUnavailable = AvailabilityZoneState' "unavailable"

{-# COMPLETE
  AvailabilityZoneStateAvailable,
  AvailabilityZoneStateImpaired,
  AvailabilityZoneStateInformation,
  AvailabilityZoneStateUnavailable,
  AvailabilityZoneState'
  #-}

instance Prelude.FromText AvailabilityZoneState where
  parser = AvailabilityZoneState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvailabilityZoneState where
  toText (AvailabilityZoneState' x) = x

instance Prelude.Hashable AvailabilityZoneState

instance Prelude.NFData AvailabilityZoneState

instance Prelude.ToByteString AvailabilityZoneState

instance Prelude.ToQuery AvailabilityZoneState

instance Prelude.ToHeader AvailabilityZoneState

instance Prelude.FromXML AvailabilityZoneState where
  parseXML = Prelude.parseXMLText "AvailabilityZoneState"
