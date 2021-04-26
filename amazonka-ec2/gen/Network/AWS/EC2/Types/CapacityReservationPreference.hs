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
-- Module      : Network.AWS.EC2.Types.CapacityReservationPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationPreference
  ( CapacityReservationPreference
      ( ..,
        CapacityReservationPreferenceNone,
        CapacityReservationPreferenceOpen
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CapacityReservationPreference = CapacityReservationPreference'
  { fromCapacityReservationPreference ::
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

pattern CapacityReservationPreferenceNone :: CapacityReservationPreference
pattern CapacityReservationPreferenceNone = CapacityReservationPreference' "none"

pattern CapacityReservationPreferenceOpen :: CapacityReservationPreference
pattern CapacityReservationPreferenceOpen = CapacityReservationPreference' "open"

{-# COMPLETE
  CapacityReservationPreferenceNone,
  CapacityReservationPreferenceOpen,
  CapacityReservationPreference'
  #-}

instance Prelude.FromText CapacityReservationPreference where
  parser = CapacityReservationPreference' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacityReservationPreference where
  toText (CapacityReservationPreference' x) = x

instance Prelude.Hashable CapacityReservationPreference

instance Prelude.NFData CapacityReservationPreference

instance Prelude.ToByteString CapacityReservationPreference

instance Prelude.ToQuery CapacityReservationPreference

instance Prelude.ToHeader CapacityReservationPreference

instance Prelude.FromXML CapacityReservationPreference where
  parseXML = Prelude.parseXMLText "CapacityReservationPreference"
