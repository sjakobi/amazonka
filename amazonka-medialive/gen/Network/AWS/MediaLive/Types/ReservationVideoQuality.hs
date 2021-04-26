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
-- Module      : Network.AWS.MediaLive.Types.ReservationVideoQuality
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationVideoQuality
  ( ReservationVideoQuality
      ( ..,
        ReservationVideoQualityENHANCED,
        ReservationVideoQualityPREMIUM,
        ReservationVideoQualitySTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Video quality, e.g. \'STANDARD\' (Outputs only)
newtype ReservationVideoQuality = ReservationVideoQuality'
  { fromReservationVideoQuality ::
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

pattern ReservationVideoQualityENHANCED :: ReservationVideoQuality
pattern ReservationVideoQualityENHANCED = ReservationVideoQuality' "ENHANCED"

pattern ReservationVideoQualityPREMIUM :: ReservationVideoQuality
pattern ReservationVideoQualityPREMIUM = ReservationVideoQuality' "PREMIUM"

pattern ReservationVideoQualitySTANDARD :: ReservationVideoQuality
pattern ReservationVideoQualitySTANDARD = ReservationVideoQuality' "STANDARD"

{-# COMPLETE
  ReservationVideoQualityENHANCED,
  ReservationVideoQualityPREMIUM,
  ReservationVideoQualitySTANDARD,
  ReservationVideoQuality'
  #-}

instance Prelude.FromText ReservationVideoQuality where
  parser = ReservationVideoQuality' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationVideoQuality where
  toText (ReservationVideoQuality' x) = x

instance Prelude.Hashable ReservationVideoQuality

instance Prelude.NFData ReservationVideoQuality

instance Prelude.ToByteString ReservationVideoQuality

instance Prelude.ToQuery ReservationVideoQuality

instance Prelude.ToHeader ReservationVideoQuality

instance Prelude.FromJSON ReservationVideoQuality where
  parseJSON = Prelude.parseJSONText "ReservationVideoQuality"
