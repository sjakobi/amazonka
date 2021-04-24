{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2FramerateControl
  ( Mpeg2FramerateControl
      ( ..,
        MFCInitializeFromSource,
        MFCSpecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
data Mpeg2FramerateControl
  = Mpeg2FramerateControl'
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

pattern MFCInitializeFromSource :: Mpeg2FramerateControl
pattern MFCInitializeFromSource = Mpeg2FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern MFCSpecified :: Mpeg2FramerateControl
pattern MFCSpecified = Mpeg2FramerateControl' "SPECIFIED"

{-# COMPLETE
  MFCInitializeFromSource,
  MFCSpecified,
  Mpeg2FramerateControl'
  #-}

instance FromText Mpeg2FramerateControl where
  parser = (Mpeg2FramerateControl' . mk) <$> takeText

instance ToText Mpeg2FramerateControl where
  toText (Mpeg2FramerateControl' ci) = original ci

instance Hashable Mpeg2FramerateControl

instance NFData Mpeg2FramerateControl

instance ToByteString Mpeg2FramerateControl

instance ToQuery Mpeg2FramerateControl

instance ToHeader Mpeg2FramerateControl

instance ToJSON Mpeg2FramerateControl where
  toJSON = toJSONText

instance FromJSON Mpeg2FramerateControl where
  parseJSON = parseJSONText "Mpeg2FramerateControl"
