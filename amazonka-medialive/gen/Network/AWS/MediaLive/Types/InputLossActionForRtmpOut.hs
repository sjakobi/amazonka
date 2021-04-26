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
-- Module      : Network.AWS.MediaLive.Types.InputLossActionForRtmpOut
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossActionForRtmpOut
  ( InputLossActionForRtmpOut
      ( ..,
        InputLossActionForRtmpOutEMITOUTPUT,
        InputLossActionForRtmpOutPAUSEOUTPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Loss Action For Rtmp Out
newtype InputLossActionForRtmpOut = InputLossActionForRtmpOut'
  { fromInputLossActionForRtmpOut ::
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

pattern InputLossActionForRtmpOutEMITOUTPUT :: InputLossActionForRtmpOut
pattern InputLossActionForRtmpOutEMITOUTPUT = InputLossActionForRtmpOut' "EMIT_OUTPUT"

pattern InputLossActionForRtmpOutPAUSEOUTPUT :: InputLossActionForRtmpOut
pattern InputLossActionForRtmpOutPAUSEOUTPUT = InputLossActionForRtmpOut' "PAUSE_OUTPUT"

{-# COMPLETE
  InputLossActionForRtmpOutEMITOUTPUT,
  InputLossActionForRtmpOutPAUSEOUTPUT,
  InputLossActionForRtmpOut'
  #-}

instance Prelude.FromText InputLossActionForRtmpOut where
  parser = InputLossActionForRtmpOut' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputLossActionForRtmpOut where
  toText (InputLossActionForRtmpOut' x) = x

instance Prelude.Hashable InputLossActionForRtmpOut

instance Prelude.NFData InputLossActionForRtmpOut

instance Prelude.ToByteString InputLossActionForRtmpOut

instance Prelude.ToQuery InputLossActionForRtmpOut

instance Prelude.ToHeader InputLossActionForRtmpOut

instance Prelude.ToJSON InputLossActionForRtmpOut where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputLossActionForRtmpOut where
  parseJSON = Prelude.parseJSONText "InputLossActionForRtmpOut"
