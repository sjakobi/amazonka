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
-- Module      : Network.AWS.MediaLive.Types.ReservationMaximumFramerate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationMaximumFramerate
  ( ReservationMaximumFramerate
      ( ..,
        ReservationMaximumFramerateMAX30FPS,
        ReservationMaximumFramerateMAX60FPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Maximum framerate in frames per second (Outputs only)
newtype ReservationMaximumFramerate = ReservationMaximumFramerate'
  { fromReservationMaximumFramerate ::
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

pattern ReservationMaximumFramerateMAX30FPS :: ReservationMaximumFramerate
pattern ReservationMaximumFramerateMAX30FPS = ReservationMaximumFramerate' "MAX_30_FPS"

pattern ReservationMaximumFramerateMAX60FPS :: ReservationMaximumFramerate
pattern ReservationMaximumFramerateMAX60FPS = ReservationMaximumFramerate' "MAX_60_FPS"

{-# COMPLETE
  ReservationMaximumFramerateMAX30FPS,
  ReservationMaximumFramerateMAX60FPS,
  ReservationMaximumFramerate'
  #-}

instance Prelude.FromText ReservationMaximumFramerate where
  parser = ReservationMaximumFramerate' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationMaximumFramerate where
  toText (ReservationMaximumFramerate' x) = x

instance Prelude.Hashable ReservationMaximumFramerate

instance Prelude.NFData ReservationMaximumFramerate

instance Prelude.ToByteString ReservationMaximumFramerate

instance Prelude.ToQuery ReservationMaximumFramerate

instance Prelude.ToHeader ReservationMaximumFramerate

instance Prelude.FromJSON ReservationMaximumFramerate where
  parseJSON = Prelude.parseJSONText "ReservationMaximumFramerate"
