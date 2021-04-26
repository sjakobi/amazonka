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
-- Module      : Network.AWS.MediaLive.Types.InputLossActionForUdpOut
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossActionForUdpOut
  ( InputLossActionForUdpOut
      ( ..,
        InputLossActionForUdpOutDROPPROGRAM,
        InputLossActionForUdpOutDROPTS,
        InputLossActionForUdpOutEMITPROGRAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Loss Action For Udp Out
newtype InputLossActionForUdpOut = InputLossActionForUdpOut'
  { fromInputLossActionForUdpOut ::
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

pattern InputLossActionForUdpOutDROPPROGRAM :: InputLossActionForUdpOut
pattern InputLossActionForUdpOutDROPPROGRAM = InputLossActionForUdpOut' "DROP_PROGRAM"

pattern InputLossActionForUdpOutDROPTS :: InputLossActionForUdpOut
pattern InputLossActionForUdpOutDROPTS = InputLossActionForUdpOut' "DROP_TS"

pattern InputLossActionForUdpOutEMITPROGRAM :: InputLossActionForUdpOut
pattern InputLossActionForUdpOutEMITPROGRAM = InputLossActionForUdpOut' "EMIT_PROGRAM"

{-# COMPLETE
  InputLossActionForUdpOutDROPPROGRAM,
  InputLossActionForUdpOutDROPTS,
  InputLossActionForUdpOutEMITPROGRAM,
  InputLossActionForUdpOut'
  #-}

instance Prelude.FromText InputLossActionForUdpOut where
  parser = InputLossActionForUdpOut' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputLossActionForUdpOut where
  toText (InputLossActionForUdpOut' x) = x

instance Prelude.Hashable InputLossActionForUdpOut

instance Prelude.NFData InputLossActionForUdpOut

instance Prelude.ToByteString InputLossActionForUdpOut

instance Prelude.ToQuery InputLossActionForUdpOut

instance Prelude.ToHeader InputLossActionForUdpOut

instance Prelude.ToJSON InputLossActionForUdpOut where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputLossActionForUdpOut where
  parseJSON = Prelude.parseJSONText "InputLossActionForUdpOut"
