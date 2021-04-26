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
-- Module      : Network.AWS.MediaConvert.Types.InputRotate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputRotate
  ( InputRotate
      ( ..,
        InputRotateAUTO,
        InputRotateDEGREE0,
        InputRotateDEGREES180,
        InputRotateDEGREES270,
        InputRotateDEGREES90
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Rotate (InputRotate) to specify how the service rotates your video.
-- You can choose automatic rotation or specify a rotation. You can specify
-- a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video
-- container is .mov or .mp4 and your input has rotation metadata, you can
-- choose Automatic to have the service rotate your video according to the
-- rotation specified in the metadata. The rotation must be within one
-- degree of 90, 180, or 270 degrees. If the rotation metadata specifies
-- any other rotation, the service will default to no rotation. By default,
-- the service does no rotation, even if your input video has rotation
-- metadata. The service doesn\'t pass through rotation metadata.
newtype InputRotate = InputRotate'
  { fromInputRotate ::
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

pattern InputRotateAUTO :: InputRotate
pattern InputRotateAUTO = InputRotate' "AUTO"

pattern InputRotateDEGREE0 :: InputRotate
pattern InputRotateDEGREE0 = InputRotate' "DEGREE_0"

pattern InputRotateDEGREES180 :: InputRotate
pattern InputRotateDEGREES180 = InputRotate' "DEGREES_180"

pattern InputRotateDEGREES270 :: InputRotate
pattern InputRotateDEGREES270 = InputRotate' "DEGREES_270"

pattern InputRotateDEGREES90 :: InputRotate
pattern InputRotateDEGREES90 = InputRotate' "DEGREES_90"

{-# COMPLETE
  InputRotateAUTO,
  InputRotateDEGREE0,
  InputRotateDEGREES180,
  InputRotateDEGREES270,
  InputRotateDEGREES90,
  InputRotate'
  #-}

instance Prelude.FromText InputRotate where
  parser = InputRotate' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputRotate where
  toText (InputRotate' x) = x

instance Prelude.Hashable InputRotate

instance Prelude.NFData InputRotate

instance Prelude.ToByteString InputRotate

instance Prelude.ToQuery InputRotate

instance Prelude.ToHeader InputRotate

instance Prelude.ToJSON InputRotate where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputRotate where
  parseJSON = Prelude.parseJSONText "InputRotate"
