{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp9FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9FramerateControl
  ( Vp9FramerateControl
      ( ..,
        Vp9InitializeFromSource,
        Vp9Specified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
data Vp9FramerateControl
  = Vp9FramerateControl'
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

pattern Vp9InitializeFromSource :: Vp9FramerateControl
pattern Vp9InitializeFromSource = Vp9FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern Vp9Specified :: Vp9FramerateControl
pattern Vp9Specified = Vp9FramerateControl' "SPECIFIED"

{-# COMPLETE
  Vp9InitializeFromSource,
  Vp9Specified,
  Vp9FramerateControl'
  #-}

instance FromText Vp9FramerateControl where
  parser = (Vp9FramerateControl' . mk) <$> takeText

instance ToText Vp9FramerateControl where
  toText (Vp9FramerateControl' ci) = original ci

instance Hashable Vp9FramerateControl

instance NFData Vp9FramerateControl

instance ToByteString Vp9FramerateControl

instance ToQuery Vp9FramerateControl

instance ToHeader Vp9FramerateControl

instance ToJSON Vp9FramerateControl where
  toJSON = toJSONText

instance FromJSON Vp9FramerateControl where
  parseJSON = parseJSONText "Vp9FramerateControl"
