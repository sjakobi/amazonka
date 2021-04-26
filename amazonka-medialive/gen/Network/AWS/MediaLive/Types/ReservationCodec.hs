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
-- Module      : Network.AWS.MediaLive.Types.ReservationCodec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationCodec
  ( ReservationCodec
      ( ..,
        ReservationCodecAUDIO,
        ReservationCodecAVC,
        ReservationCodecHEVC,
        ReservationCodecLINK,
        ReservationCodecMPEG2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Codec, \'MPEG2\', \'AVC\', \'HEVC\', or \'AUDIO\'
newtype ReservationCodec = ReservationCodec'
  { fromReservationCodec ::
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

pattern ReservationCodecAUDIO :: ReservationCodec
pattern ReservationCodecAUDIO = ReservationCodec' "AUDIO"

pattern ReservationCodecAVC :: ReservationCodec
pattern ReservationCodecAVC = ReservationCodec' "AVC"

pattern ReservationCodecHEVC :: ReservationCodec
pattern ReservationCodecHEVC = ReservationCodec' "HEVC"

pattern ReservationCodecLINK :: ReservationCodec
pattern ReservationCodecLINK = ReservationCodec' "LINK"

pattern ReservationCodecMPEG2 :: ReservationCodec
pattern ReservationCodecMPEG2 = ReservationCodec' "MPEG2"

{-# COMPLETE
  ReservationCodecAUDIO,
  ReservationCodecAVC,
  ReservationCodecHEVC,
  ReservationCodecLINK,
  ReservationCodecMPEG2,
  ReservationCodec'
  #-}

instance Prelude.FromText ReservationCodec where
  parser = ReservationCodec' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationCodec where
  toText (ReservationCodec' x) = x

instance Prelude.Hashable ReservationCodec

instance Prelude.NFData ReservationCodec

instance Prelude.ToByteString ReservationCodec

instance Prelude.ToQuery ReservationCodec

instance Prelude.ToHeader ReservationCodec

instance Prelude.FromJSON ReservationCodec where
  parseJSON = Prelude.parseJSONText "ReservationCodec"
