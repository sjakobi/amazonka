{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264FramerateControl
  ( H264FramerateControl
      ( ..,
        HFCInitializeFromSource,
        HFCSpecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
data H264FramerateControl
  = H264FramerateControl'
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

pattern HFCInitializeFromSource :: H264FramerateControl
pattern HFCInitializeFromSource = H264FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern HFCSpecified :: H264FramerateControl
pattern HFCSpecified = H264FramerateControl' "SPECIFIED"

{-# COMPLETE
  HFCInitializeFromSource,
  HFCSpecified,
  H264FramerateControl'
  #-}

instance FromText H264FramerateControl where
  parser = (H264FramerateControl' . mk) <$> takeText

instance ToText H264FramerateControl where
  toText (H264FramerateControl' ci) = original ci

instance Hashable H264FramerateControl

instance NFData H264FramerateControl

instance ToByteString H264FramerateControl

instance ToQuery H264FramerateControl

instance ToHeader H264FramerateControl

instance ToJSON H264FramerateControl where
  toJSON = toJSONText

instance FromJSON H264FramerateControl where
  parseJSON = parseJSONText "H264FramerateControl"
