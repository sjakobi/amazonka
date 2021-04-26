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
-- Module      : Network.AWS.MediaLive.Types.InputMaximumBitrate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputMaximumBitrate
  ( InputMaximumBitrate
      ( ..,
        InputMaximumBitrateMAX10MBPS,
        InputMaximumBitrateMAX20MBPS,
        InputMaximumBitrateMAX50MBPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Maximum input bitrate in megabits per second. Bitrates up to 50 Mbps are
-- supported currently.
newtype InputMaximumBitrate = InputMaximumBitrate'
  { fromInputMaximumBitrate ::
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

pattern InputMaximumBitrateMAX10MBPS :: InputMaximumBitrate
pattern InputMaximumBitrateMAX10MBPS = InputMaximumBitrate' "MAX_10_MBPS"

pattern InputMaximumBitrateMAX20MBPS :: InputMaximumBitrate
pattern InputMaximumBitrateMAX20MBPS = InputMaximumBitrate' "MAX_20_MBPS"

pattern InputMaximumBitrateMAX50MBPS :: InputMaximumBitrate
pattern InputMaximumBitrateMAX50MBPS = InputMaximumBitrate' "MAX_50_MBPS"

{-# COMPLETE
  InputMaximumBitrateMAX10MBPS,
  InputMaximumBitrateMAX20MBPS,
  InputMaximumBitrateMAX50MBPS,
  InputMaximumBitrate'
  #-}

instance Prelude.FromText InputMaximumBitrate where
  parser = InputMaximumBitrate' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputMaximumBitrate where
  toText (InputMaximumBitrate' x) = x

instance Prelude.Hashable InputMaximumBitrate

instance Prelude.NFData InputMaximumBitrate

instance Prelude.ToByteString InputMaximumBitrate

instance Prelude.ToQuery InputMaximumBitrate

instance Prelude.ToHeader InputMaximumBitrate

instance Prelude.ToJSON InputMaximumBitrate where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputMaximumBitrate where
  parseJSON = Prelude.parseJSONText "InputMaximumBitrate"
