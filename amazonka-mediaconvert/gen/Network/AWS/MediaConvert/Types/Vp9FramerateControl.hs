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
-- Module      : Network.AWS.MediaConvert.Types.Vp9FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9FramerateControl
  ( Vp9FramerateControl
      ( ..,
        Vp9FramerateControlINITIALIZEFROMSOURCE,
        Vp9FramerateControlSPECIFIED
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
newtype Vp9FramerateControl = Vp9FramerateControl'
  { fromVp9FramerateControl ::
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

pattern Vp9FramerateControlINITIALIZEFROMSOURCE :: Vp9FramerateControl
pattern Vp9FramerateControlINITIALIZEFROMSOURCE = Vp9FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern Vp9FramerateControlSPECIFIED :: Vp9FramerateControl
pattern Vp9FramerateControlSPECIFIED = Vp9FramerateControl' "SPECIFIED"

{-# COMPLETE
  Vp9FramerateControlINITIALIZEFROMSOURCE,
  Vp9FramerateControlSPECIFIED,
  Vp9FramerateControl'
  #-}

instance Prelude.FromText Vp9FramerateControl where
  parser = Vp9FramerateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp9FramerateControl where
  toText (Vp9FramerateControl' x) = x

instance Prelude.Hashable Vp9FramerateControl

instance Prelude.NFData Vp9FramerateControl

instance Prelude.ToByteString Vp9FramerateControl

instance Prelude.ToQuery Vp9FramerateControl

instance Prelude.ToHeader Vp9FramerateControl

instance Prelude.ToJSON Vp9FramerateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp9FramerateControl where
  parseJSON = Prelude.parseJSONText "Vp9FramerateControl"
