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
-- Module      : Network.AWS.MediaLive.Types.ReservationSpecialFeature
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationSpecialFeature
  ( ReservationSpecialFeature
      ( ..,
        ReservationSpecialFeatureADVANCEDAUDIO,
        ReservationSpecialFeatureAUDIONORMALIZATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Special features, \'ADVANCED_AUDIO\' or \'AUDIO_NORMALIZATION\'
newtype ReservationSpecialFeature = ReservationSpecialFeature'
  { fromReservationSpecialFeature ::
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

pattern ReservationSpecialFeatureADVANCEDAUDIO :: ReservationSpecialFeature
pattern ReservationSpecialFeatureADVANCEDAUDIO = ReservationSpecialFeature' "ADVANCED_AUDIO"

pattern ReservationSpecialFeatureAUDIONORMALIZATION :: ReservationSpecialFeature
pattern ReservationSpecialFeatureAUDIONORMALIZATION = ReservationSpecialFeature' "AUDIO_NORMALIZATION"

{-# COMPLETE
  ReservationSpecialFeatureADVANCEDAUDIO,
  ReservationSpecialFeatureAUDIONORMALIZATION,
  ReservationSpecialFeature'
  #-}

instance Prelude.FromText ReservationSpecialFeature where
  parser = ReservationSpecialFeature' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationSpecialFeature where
  toText (ReservationSpecialFeature' x) = x

instance Prelude.Hashable ReservationSpecialFeature

instance Prelude.NFData ReservationSpecialFeature

instance Prelude.ToByteString ReservationSpecialFeature

instance Prelude.ToQuery ReservationSpecialFeature

instance Prelude.ToHeader ReservationSpecialFeature

instance Prelude.FromJSON ReservationSpecialFeature where
  parseJSON = Prelude.parseJSONText "ReservationSpecialFeature"
