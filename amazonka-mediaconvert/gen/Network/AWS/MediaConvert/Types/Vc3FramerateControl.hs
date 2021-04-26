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
-- Module      : Network.AWS.MediaConvert.Types.Vc3FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3FramerateControl
  ( Vc3FramerateControl
      ( ..,
        Vc3FramerateControlINITIALIZEFROMSOURCE,
        Vc3FramerateControlSPECIFIED
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
newtype Vc3FramerateControl = Vc3FramerateControl'
  { fromVc3FramerateControl ::
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

pattern Vc3FramerateControlINITIALIZEFROMSOURCE :: Vc3FramerateControl
pattern Vc3FramerateControlINITIALIZEFROMSOURCE = Vc3FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern Vc3FramerateControlSPECIFIED :: Vc3FramerateControl
pattern Vc3FramerateControlSPECIFIED = Vc3FramerateControl' "SPECIFIED"

{-# COMPLETE
  Vc3FramerateControlINITIALIZEFROMSOURCE,
  Vc3FramerateControlSPECIFIED,
  Vc3FramerateControl'
  #-}

instance Prelude.FromText Vc3FramerateControl where
  parser = Vc3FramerateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vc3FramerateControl where
  toText (Vc3FramerateControl' x) = x

instance Prelude.Hashable Vc3FramerateControl

instance Prelude.NFData Vc3FramerateControl

instance Prelude.ToByteString Vc3FramerateControl

instance Prelude.ToQuery Vc3FramerateControl

instance Prelude.ToHeader Vc3FramerateControl

instance Prelude.ToJSON Vc3FramerateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vc3FramerateControl where
  parseJSON = Prelude.parseJSONText "Vc3FramerateControl"
