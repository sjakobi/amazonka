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
-- Module      : Network.AWS.MediaLive.Types.ReservationResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationResolution
  ( ReservationResolution
      ( ..,
        ReservationResolutionFHD,
        ReservationResolutionHD,
        ReservationResolutionSD,
        ReservationResolutionUHD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Resolution based on lines of vertical resolution; SD is less than 720
-- lines, HD is 720 to 1080 lines, FHD is 1080 lines, UHD is greater than
-- 1080 lines
newtype ReservationResolution = ReservationResolution'
  { fromReservationResolution ::
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

pattern ReservationResolutionFHD :: ReservationResolution
pattern ReservationResolutionFHD = ReservationResolution' "FHD"

pattern ReservationResolutionHD :: ReservationResolution
pattern ReservationResolutionHD = ReservationResolution' "HD"

pattern ReservationResolutionSD :: ReservationResolution
pattern ReservationResolutionSD = ReservationResolution' "SD"

pattern ReservationResolutionUHD :: ReservationResolution
pattern ReservationResolutionUHD = ReservationResolution' "UHD"

{-# COMPLETE
  ReservationResolutionFHD,
  ReservationResolutionHD,
  ReservationResolutionSD,
  ReservationResolutionUHD,
  ReservationResolution'
  #-}

instance Prelude.FromText ReservationResolution where
  parser = ReservationResolution' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationResolution where
  toText (ReservationResolution' x) = x

instance Prelude.Hashable ReservationResolution

instance Prelude.NFData ReservationResolution

instance Prelude.ToByteString ReservationResolution

instance Prelude.ToQuery ReservationResolution

instance Prelude.ToHeader ReservationResolution

instance Prelude.FromJSON ReservationResolution where
  parseJSON = Prelude.parseJSONText "ReservationResolution"
