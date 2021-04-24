{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputRotate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputRotate
  ( InputRotate
      ( ..,
        IRAuto,
        IRDegree0,
        IRDegrees180,
        IRDegrees270,
        IRDegrees90
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Rotate (InputRotate) to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata.
data InputRotate = InputRotate' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IRAuto :: InputRotate
pattern IRAuto = InputRotate' "AUTO"

pattern IRDegree0 :: InputRotate
pattern IRDegree0 = InputRotate' "DEGREE_0"

pattern IRDegrees180 :: InputRotate
pattern IRDegrees180 = InputRotate' "DEGREES_180"

pattern IRDegrees270 :: InputRotate
pattern IRDegrees270 = InputRotate' "DEGREES_270"

pattern IRDegrees90 :: InputRotate
pattern IRDegrees90 = InputRotate' "DEGREES_90"

{-# COMPLETE
  IRAuto,
  IRDegree0,
  IRDegrees180,
  IRDegrees270,
  IRDegrees90,
  InputRotate'
  #-}

instance FromText InputRotate where
  parser = (InputRotate' . mk) <$> takeText

instance ToText InputRotate where
  toText (InputRotate' ci) = original ci

instance Hashable InputRotate

instance NFData InputRotate

instance ToByteString InputRotate

instance ToQuery InputRotate

instance ToHeader InputRotate

instance ToJSON InputRotate where
  toJSON = toJSONText

instance FromJSON InputRotate where
  parseJSON = parseJSONText "InputRotate"
