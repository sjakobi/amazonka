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
-- Module      : Network.AWS.MediaConvert.Types.Vp8FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8FramerateControl
  ( Vp8FramerateControl
      ( ..,
        Vp8FramerateControlINITIALIZEFROMSOURCE,
        Vp8FramerateControlSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If you are using the console, use the Framerate setting to specify the
-- frame rate for this output. If you want to keep the same frame rate as
-- the input video, choose Follow source. If you want to do frame rate
-- conversion, choose a frame rate from the dropdown list or choose Custom.
-- The framerates shown in the dropdown list are decimal approximations of
-- fractions. If you choose Custom, specify your frame rate as a fraction.
-- If you are creating your transcoding job specification as a JSON file
-- without the console, use FramerateControl to specify which value the
-- service uses for the frame rate for this output. Choose
-- INITIALIZE_FROM_SOURCE if you want the service to use the frame rate
-- from the input. Choose SPECIFIED if you want the service to use the
-- frame rate you specify in the settings FramerateNumerator and
-- FramerateDenominator.
newtype Vp8FramerateControl = Vp8FramerateControl'
  { fromVp8FramerateControl ::
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

pattern Vp8FramerateControlINITIALIZEFROMSOURCE :: Vp8FramerateControl
pattern Vp8FramerateControlINITIALIZEFROMSOURCE = Vp8FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern Vp8FramerateControlSPECIFIED :: Vp8FramerateControl
pattern Vp8FramerateControlSPECIFIED = Vp8FramerateControl' "SPECIFIED"

{-# COMPLETE
  Vp8FramerateControlINITIALIZEFROMSOURCE,
  Vp8FramerateControlSPECIFIED,
  Vp8FramerateControl'
  #-}

instance Prelude.FromText Vp8FramerateControl where
  parser = Vp8FramerateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp8FramerateControl where
  toText (Vp8FramerateControl' x) = x

instance Prelude.Hashable Vp8FramerateControl

instance Prelude.NFData Vp8FramerateControl

instance Prelude.ToByteString Vp8FramerateControl

instance Prelude.ToQuery Vp8FramerateControl

instance Prelude.ToHeader Vp8FramerateControl

instance Prelude.ToJSON Vp8FramerateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp8FramerateControl where
  parseJSON = Prelude.parseJSONText "Vp8FramerateControl"
