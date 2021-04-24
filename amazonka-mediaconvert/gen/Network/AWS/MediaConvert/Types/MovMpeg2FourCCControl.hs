{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
  ( MovMpeg2FourCCControl
      ( ..,
        MMFCCCMpeg,
        MMFCCCXdcam
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
data MovMpeg2FourCCControl
  = MovMpeg2FourCCControl'
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

pattern MMFCCCMpeg :: MovMpeg2FourCCControl
pattern MMFCCCMpeg = MovMpeg2FourCCControl' "MPEG"

pattern MMFCCCXdcam :: MovMpeg2FourCCControl
pattern MMFCCCXdcam = MovMpeg2FourCCControl' "XDCAM"

{-# COMPLETE
  MMFCCCMpeg,
  MMFCCCXdcam,
  MovMpeg2FourCCControl'
  #-}

instance FromText MovMpeg2FourCCControl where
  parser = (MovMpeg2FourCCControl' . mk) <$> takeText

instance ToText MovMpeg2FourCCControl where
  toText (MovMpeg2FourCCControl' ci) = original ci

instance Hashable MovMpeg2FourCCControl

instance NFData MovMpeg2FourCCControl

instance ToByteString MovMpeg2FourCCControl

instance ToQuery MovMpeg2FourCCControl

instance ToHeader MovMpeg2FourCCControl

instance ToJSON MovMpeg2FourCCControl where
  toJSON = toJSONText

instance FromJSON MovMpeg2FourCCControl where
  parseJSON = parseJSONText "MovMpeg2FourCCControl"
