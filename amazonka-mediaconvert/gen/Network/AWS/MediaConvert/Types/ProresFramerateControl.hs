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
-- Module      : Network.AWS.MediaConvert.Types.ProresFramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresFramerateControl
  ( ProresFramerateControl
      ( ..,
        ProresFramerateControlINITIALIZEFROMSOURCE,
        ProresFramerateControlSPECIFIED
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
newtype ProresFramerateControl = ProresFramerateControl'
  { fromProresFramerateControl ::
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

pattern ProresFramerateControlINITIALIZEFROMSOURCE :: ProresFramerateControl
pattern ProresFramerateControlINITIALIZEFROMSOURCE = ProresFramerateControl' "INITIALIZE_FROM_SOURCE"

pattern ProresFramerateControlSPECIFIED :: ProresFramerateControl
pattern ProresFramerateControlSPECIFIED = ProresFramerateControl' "SPECIFIED"

{-# COMPLETE
  ProresFramerateControlINITIALIZEFROMSOURCE,
  ProresFramerateControlSPECIFIED,
  ProresFramerateControl'
  #-}

instance Prelude.FromText ProresFramerateControl where
  parser = ProresFramerateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProresFramerateControl where
  toText (ProresFramerateControl' x) = x

instance Prelude.Hashable ProresFramerateControl

instance Prelude.NFData ProresFramerateControl

instance Prelude.ToByteString ProresFramerateControl

instance Prelude.ToQuery ProresFramerateControl

instance Prelude.ToHeader ProresFramerateControl

instance Prelude.ToJSON ProresFramerateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProresFramerateControl where
  parseJSON = Prelude.parseJSONText "ProresFramerateControl"
