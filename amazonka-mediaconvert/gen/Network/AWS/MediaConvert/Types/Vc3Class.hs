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
-- Module      : Network.AWS.MediaConvert.Types.Vc3Class
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3Class
  ( Vc3Class
      ( ..,
        Vc3ClassCLASS1458BIT,
        Vc3ClassCLASS22010BIT,
        Vc3ClassCLASS2208BIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the VC3 class to choose the quality characteristics for this
-- output. VC3 class, together with the settings Framerate
-- (framerateNumerator and framerateDenominator) and Resolution (height and
-- width), determine your output bitrate. For example, say that your video
-- resolution is 1920x1080 and your framerate is 29.97. Then Class 145
-- (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps
-- and Class 220 (CLASS_220) gives you and output with a bitrate of
-- approximately 220 Mbps. VC3 class also specifies the color bit depth of
-- your output.
newtype Vc3Class = Vc3Class'
  { fromVc3Class ::
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

pattern Vc3ClassCLASS1458BIT :: Vc3Class
pattern Vc3ClassCLASS1458BIT = Vc3Class' "CLASS_145_8BIT"

pattern Vc3ClassCLASS22010BIT :: Vc3Class
pattern Vc3ClassCLASS22010BIT = Vc3Class' "CLASS_220_10BIT"

pattern Vc3ClassCLASS2208BIT :: Vc3Class
pattern Vc3ClassCLASS2208BIT = Vc3Class' "CLASS_220_8BIT"

{-# COMPLETE
  Vc3ClassCLASS1458BIT,
  Vc3ClassCLASS22010BIT,
  Vc3ClassCLASS2208BIT,
  Vc3Class'
  #-}

instance Prelude.FromText Vc3Class where
  parser = Vc3Class' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vc3Class where
  toText (Vc3Class' x) = x

instance Prelude.Hashable Vc3Class

instance Prelude.NFData Vc3Class

instance Prelude.ToByteString Vc3Class

instance Prelude.ToQuery Vc3Class

instance Prelude.ToHeader Vc3Class

instance Prelude.ToJSON Vc3Class where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vc3Class where
  parseJSON = Prelude.parseJSONText "Vc3Class"
