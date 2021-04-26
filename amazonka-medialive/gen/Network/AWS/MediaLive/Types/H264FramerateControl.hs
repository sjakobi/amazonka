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
-- Module      : Network.AWS.MediaLive.Types.H264FramerateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264FramerateControl
  ( H264FramerateControl
      ( ..,
        H264FramerateControlINITIALIZEFROMSOURCE,
        H264FramerateControlSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Framerate Control
newtype H264FramerateControl = H264FramerateControl'
  { fromH264FramerateControl ::
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

pattern H264FramerateControlINITIALIZEFROMSOURCE :: H264FramerateControl
pattern H264FramerateControlINITIALIZEFROMSOURCE = H264FramerateControl' "INITIALIZE_FROM_SOURCE"

pattern H264FramerateControlSPECIFIED :: H264FramerateControl
pattern H264FramerateControlSPECIFIED = H264FramerateControl' "SPECIFIED"

{-# COMPLETE
  H264FramerateControlINITIALIZEFROMSOURCE,
  H264FramerateControlSPECIFIED,
  H264FramerateControl'
  #-}

instance Prelude.FromText H264FramerateControl where
  parser = H264FramerateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264FramerateControl where
  toText (H264FramerateControl' x) = x

instance Prelude.Hashable H264FramerateControl

instance Prelude.NFData H264FramerateControl

instance Prelude.ToByteString H264FramerateControl

instance Prelude.ToQuery H264FramerateControl

instance Prelude.ToHeader H264FramerateControl

instance Prelude.ToJSON H264FramerateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264FramerateControl where
  parseJSON = Prelude.parseJSONText "H264FramerateControl"
