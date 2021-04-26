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
-- Module      : Network.AWS.MediaLive.Types.ReservationMaximumBitrate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationMaximumBitrate
  ( ReservationMaximumBitrate
      ( ..,
        ReservationMaximumBitrateMAX10MBPS,
        ReservationMaximumBitrateMAX20MBPS,
        ReservationMaximumBitrateMAX50MBPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Maximum bitrate in megabits per second
newtype ReservationMaximumBitrate = ReservationMaximumBitrate'
  { fromReservationMaximumBitrate ::
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

pattern ReservationMaximumBitrateMAX10MBPS :: ReservationMaximumBitrate
pattern ReservationMaximumBitrateMAX10MBPS = ReservationMaximumBitrate' "MAX_10_MBPS"

pattern ReservationMaximumBitrateMAX20MBPS :: ReservationMaximumBitrate
pattern ReservationMaximumBitrateMAX20MBPS = ReservationMaximumBitrate' "MAX_20_MBPS"

pattern ReservationMaximumBitrateMAX50MBPS :: ReservationMaximumBitrate
pattern ReservationMaximumBitrateMAX50MBPS = ReservationMaximumBitrate' "MAX_50_MBPS"

{-# COMPLETE
  ReservationMaximumBitrateMAX10MBPS,
  ReservationMaximumBitrateMAX20MBPS,
  ReservationMaximumBitrateMAX50MBPS,
  ReservationMaximumBitrate'
  #-}

instance Prelude.FromText ReservationMaximumBitrate where
  parser = ReservationMaximumBitrate' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationMaximumBitrate where
  toText (ReservationMaximumBitrate' x) = x

instance Prelude.Hashable ReservationMaximumBitrate

instance Prelude.NFData ReservationMaximumBitrate

instance Prelude.ToByteString ReservationMaximumBitrate

instance Prelude.ToQuery ReservationMaximumBitrate

instance Prelude.ToHeader ReservationMaximumBitrate

instance Prelude.FromJSON ReservationMaximumBitrate where
  parseJSON = Prelude.parseJSONText "ReservationMaximumBitrate"
