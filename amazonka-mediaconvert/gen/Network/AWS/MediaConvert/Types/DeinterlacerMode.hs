{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DeinterlacerMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DeinterlacerMode
  ( DeinterlacerMode
      ( ..,
        DMAdaptive,
        DMDeinterlace,
        DMInverseTelecine
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.
data DeinterlacerMode = DeinterlacerMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DMAdaptive :: DeinterlacerMode
pattern DMAdaptive = DeinterlacerMode' "ADAPTIVE"

pattern DMDeinterlace :: DeinterlacerMode
pattern DMDeinterlace = DeinterlacerMode' "DEINTERLACE"

pattern DMInverseTelecine :: DeinterlacerMode
pattern DMInverseTelecine = DeinterlacerMode' "INVERSE_TELECINE"

{-# COMPLETE
  DMAdaptive,
  DMDeinterlace,
  DMInverseTelecine,
  DeinterlacerMode'
  #-}

instance FromText DeinterlacerMode where
  parser = (DeinterlacerMode' . mk) <$> takeText

instance ToText DeinterlacerMode where
  toText (DeinterlacerMode' ci) = original ci

instance Hashable DeinterlacerMode

instance NFData DeinterlacerMode

instance ToByteString DeinterlacerMode

instance ToQuery DeinterlacerMode

instance ToHeader DeinterlacerMode

instance ToJSON DeinterlacerMode where
  toJSON = toJSONText

instance FromJSON DeinterlacerMode where
  parseJSON = parseJSONText "DeinterlacerMode"
