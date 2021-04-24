{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Class1458BIT,
        Class22010BIT,
        Class2208BIT
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps and Class 220 (CLASS_220) gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output.
data Vc3Class = Vc3Class' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Class1458BIT :: Vc3Class
pattern Class1458BIT = Vc3Class' "CLASS_145_8BIT"

pattern Class22010BIT :: Vc3Class
pattern Class22010BIT = Vc3Class' "CLASS_220_10BIT"

pattern Class2208BIT :: Vc3Class
pattern Class2208BIT = Vc3Class' "CLASS_220_8BIT"

{-# COMPLETE
  Class1458BIT,
  Class22010BIT,
  Class2208BIT,
  Vc3Class'
  #-}

instance FromText Vc3Class where
  parser = (Vc3Class' . mk) <$> takeText

instance ToText Vc3Class where
  toText (Vc3Class' ci) = original ci

instance Hashable Vc3Class

instance NFData Vc3Class

instance ToByteString Vc3Class

instance ToQuery Vc3Class

instance ToHeader Vc3Class

instance ToJSON Vc3Class where
  toJSON = toJSONText

instance FromJSON Vc3Class where
  parseJSON = parseJSONText "Vc3Class"
