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
-- Module      : Network.AWS.MediaLive.Types.H264ParControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ParControl
  ( H264ParControl
      ( ..,
        H264ParControlINITIALIZEFROMSOURCE,
        H264ParControlSPECIFIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Par Control
newtype H264ParControl = H264ParControl'
  { fromH264ParControl ::
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

pattern H264ParControlINITIALIZEFROMSOURCE :: H264ParControl
pattern H264ParControlINITIALIZEFROMSOURCE = H264ParControl' "INITIALIZE_FROM_SOURCE"

pattern H264ParControlSPECIFIED :: H264ParControl
pattern H264ParControlSPECIFIED = H264ParControl' "SPECIFIED"

{-# COMPLETE
  H264ParControlINITIALIZEFROMSOURCE,
  H264ParControlSPECIFIED,
  H264ParControl'
  #-}

instance Prelude.FromText H264ParControl where
  parser = H264ParControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264ParControl where
  toText (H264ParControl' x) = x

instance Prelude.Hashable H264ParControl

instance Prelude.NFData H264ParControl

instance Prelude.ToByteString H264ParControl

instance Prelude.ToQuery H264ParControl

instance Prelude.ToHeader H264ParControl

instance Prelude.ToJSON H264ParControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264ParControl where
  parseJSON = Prelude.parseJSONText "H264ParControl"
