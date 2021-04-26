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
-- Module      : Network.AWS.MediaConvert.Types.Av1FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1FramerateControl
  ( Av1FramerateControl
      ( ..,
        Av1FramerateControlINITIALIZEFROMSOURCE,
        Av1FramerateControlSPECIFIED
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
newtype Av1FramerateControl = Av1FramerateControl'
  { fromAv1FramerateControl ::
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

pattern Av1FramerateControlINITIALIZEFROMSOURCE :: Av1FramerateControl
pattern Av1FramerateControlINITIALIZEFROMSOURCE = Av1FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern Av1FramerateControlSPECIFIED :: Av1FramerateControl
pattern Av1FramerateControlSPECIFIED = Av1FramerateControl' "SPECIFIED"

{-# COMPLETE
  Av1FramerateControlINITIALIZEFROMSOURCE,
  Av1FramerateControlSPECIFIED,
  Av1FramerateControl'
  #-}

instance Prelude.FromText Av1FramerateControl where
  parser = Av1FramerateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Av1FramerateControl where
  toText (Av1FramerateControl' x) = x

instance Prelude.Hashable Av1FramerateControl

instance Prelude.NFData Av1FramerateControl

instance Prelude.ToByteString Av1FramerateControl

instance Prelude.ToQuery Av1FramerateControl

instance Prelude.ToHeader Av1FramerateControl

instance Prelude.ToJSON Av1FramerateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Av1FramerateControl where
  parseJSON = Prelude.parseJSONText "Av1FramerateControl"
