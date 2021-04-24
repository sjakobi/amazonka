{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ILAFHOEmitOutput,
        ILAFHOPauseOutput
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Input Loss Action For Hls Out
data InputLossActionForHlsOut
  = InputLossActionForHlsOut'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ILAFHOEmitOutput :: InputLossActionForHlsOut
pattern ILAFHOEmitOutput = InputLossActionForHlsOut' "EMIT_OUTPUT"

pattern ILAFHOPauseOutput :: InputLossActionForHlsOut
pattern ILAFHOPauseOutput = InputLossActionForHlsOut' "PAUSE_OUTPUT"

{-# COMPLETE
  ILAFHOEmitOutput,
  ILAFHOPauseOutput,
  InputLossActionForHlsOut'
  #-}

instance FromText InputLossActionForHlsOut where
  parser = (InputLossActionForHlsOut' . mk) <$> takeText

instance ToText InputLossActionForHlsOut where
  toText (InputLossActionForHlsOut' ci) = original ci

instance Hashable InputLossActionForHlsOut

instance NFData InputLossActionForHlsOut

instance ToByteString InputLossActionForHlsOut

instance ToQuery InputLossActionForHlsOut

instance ToHeader InputLossActionForHlsOut

instance ToJSON InputLossActionForHlsOut where
  toJSON = toJSONText

instance FromJSON InputLossActionForHlsOut where
  parseJSON = parseJSONText "InputLossActionForHlsOut"
