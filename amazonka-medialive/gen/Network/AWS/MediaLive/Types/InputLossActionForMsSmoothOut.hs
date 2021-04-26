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
-- Module      : Network.AWS.MediaLive.Types.InputLossActionForMsSmoothOut
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossActionForMsSmoothOut
  ( InputLossActionForMsSmoothOut
      ( ..,
        InputLossActionForMsSmoothOutEMITOUTPUT,
        InputLossActionForMsSmoothOutPAUSEOUTPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Loss Action For Ms Smooth Out
newtype InputLossActionForMsSmoothOut = InputLossActionForMsSmoothOut'
  { fromInputLossActionForMsSmoothOut ::
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

pattern InputLossActionForMsSmoothOutEMITOUTPUT :: InputLossActionForMsSmoothOut
pattern InputLossActionForMsSmoothOutEMITOUTPUT = InputLossActionForMsSmoothOut' "EMIT_OUTPUT"

pattern InputLossActionForMsSmoothOutPAUSEOUTPUT :: InputLossActionForMsSmoothOut
pattern InputLossActionForMsSmoothOutPAUSEOUTPUT = InputLossActionForMsSmoothOut' "PAUSE_OUTPUT"

{-# COMPLETE
  InputLossActionForMsSmoothOutEMITOUTPUT,
  InputLossActionForMsSmoothOutPAUSEOUTPUT,
  InputLossActionForMsSmoothOut'
  #-}

instance Prelude.FromText InputLossActionForMsSmoothOut where
  parser = InputLossActionForMsSmoothOut' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputLossActionForMsSmoothOut where
  toText (InputLossActionForMsSmoothOut' x) = x

instance Prelude.Hashable InputLossActionForMsSmoothOut

instance Prelude.NFData InputLossActionForMsSmoothOut

instance Prelude.ToByteString InputLossActionForMsSmoothOut

instance Prelude.ToQuery InputLossActionForMsSmoothOut

instance Prelude.ToHeader InputLossActionForMsSmoothOut

instance Prelude.ToJSON InputLossActionForMsSmoothOut where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputLossActionForMsSmoothOut where
  parseJSON = Prelude.parseJSONText "InputLossActionForMsSmoothOut"
