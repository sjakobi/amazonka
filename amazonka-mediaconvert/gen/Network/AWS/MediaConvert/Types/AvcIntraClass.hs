{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraClass
  ( AvcIntraClass
      ( ..,
        Class100,
        Class200,
        Class4K2K,
        Class50
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the AVC-Intra class of your output. The AVC-Intra class selection determines the output video bit rate depending on the frame rate of the output. Outputs with higher class values have higher bitrates and improved image quality. Note that for Class 4K/2K, MediaConvert supports only 4:2:2 chroma subsampling.
data AvcIntraClass = AvcIntraClass' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Class100 :: AvcIntraClass
pattern Class100 = AvcIntraClass' "CLASS_100"

pattern Class200 :: AvcIntraClass
pattern Class200 = AvcIntraClass' "CLASS_200"

pattern Class4K2K :: AvcIntraClass
pattern Class4K2K = AvcIntraClass' "CLASS_4K_2K"

pattern Class50 :: AvcIntraClass
pattern Class50 = AvcIntraClass' "CLASS_50"

{-# COMPLETE
  Class100,
  Class200,
  Class4K2K,
  Class50,
  AvcIntraClass'
  #-}

instance FromText AvcIntraClass where
  parser = (AvcIntraClass' . mk) <$> takeText

instance ToText AvcIntraClass where
  toText (AvcIntraClass' ci) = original ci

instance Hashable AvcIntraClass

instance NFData AvcIntraClass

instance ToByteString AvcIntraClass

instance ToQuery AvcIntraClass

instance ToHeader AvcIntraClass

instance ToJSON AvcIntraClass where
  toJSON = toJSONText

instance FromJSON AvcIntraClass where
  parseJSON = parseJSONText "AvcIntraClass"
