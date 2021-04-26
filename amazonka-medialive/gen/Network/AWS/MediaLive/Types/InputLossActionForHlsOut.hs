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
-- Module      : Network.AWS.MediaLive.Types.InputLossActionForHlsOut
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossActionForHlsOut
  ( InputLossActionForHlsOut
      ( ..,
        InputLossActionForHlsOutEMITOUTPUT,
        InputLossActionForHlsOutPAUSEOUTPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Loss Action For Hls Out
newtype InputLossActionForHlsOut = InputLossActionForHlsOut'
  { fromInputLossActionForHlsOut ::
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

pattern InputLossActionForHlsOutEMITOUTPUT :: InputLossActionForHlsOut
pattern InputLossActionForHlsOutEMITOUTPUT = InputLossActionForHlsOut' "EMIT_OUTPUT"

pattern InputLossActionForHlsOutPAUSEOUTPUT :: InputLossActionForHlsOut
pattern InputLossActionForHlsOutPAUSEOUTPUT = InputLossActionForHlsOut' "PAUSE_OUTPUT"

{-# COMPLETE
  InputLossActionForHlsOutEMITOUTPUT,
  InputLossActionForHlsOutPAUSEOUTPUT,
  InputLossActionForHlsOut'
  #-}

instance Prelude.FromText InputLossActionForHlsOut where
  parser = InputLossActionForHlsOut' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputLossActionForHlsOut where
  toText (InputLossActionForHlsOut' x) = x

instance Prelude.Hashable InputLossActionForHlsOut

instance Prelude.NFData InputLossActionForHlsOut

instance Prelude.ToByteString InputLossActionForHlsOut

instance Prelude.ToQuery InputLossActionForHlsOut

instance Prelude.ToHeader InputLossActionForHlsOut

instance Prelude.ToJSON InputLossActionForHlsOut where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputLossActionForHlsOut where
  parseJSON = Prelude.parseJSONText "InputLossActionForHlsOut"
