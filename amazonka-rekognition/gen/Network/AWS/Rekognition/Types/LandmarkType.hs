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
-- Module      : Network.AWS.Rekognition.Types.LandmarkType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.LandmarkType
  ( LandmarkType
      ( ..,
        LandmarkTypeChinBottom,
        LandmarkTypeEyeLeft,
        LandmarkTypeEyeRight,
        LandmarkTypeLeftEyeBrowLeft,
        LandmarkTypeLeftEyeBrowRight,
        LandmarkTypeLeftEyeBrowUp,
        LandmarkTypeLeftEyeDown,
        LandmarkTypeLeftEyeLeft,
        LandmarkTypeLeftEyeRight,
        LandmarkTypeLeftEyeUp,
        LandmarkTypeLeftPupil,
        LandmarkTypeMidJawlineLeft,
        LandmarkTypeMidJawlineRight,
        LandmarkTypeMouthDown,
        LandmarkTypeMouthLeft,
        LandmarkTypeMouthRight,
        LandmarkTypeMouthUp,
        LandmarkTypeNose,
        LandmarkTypeNoseLeft,
        LandmarkTypeNoseRight,
        LandmarkTypeRightEyeBrowLeft,
        LandmarkTypeRightEyeBrowRight,
        LandmarkTypeRightEyeBrowUp,
        LandmarkTypeRightEyeDown,
        LandmarkTypeRightEyeLeft,
        LandmarkTypeRightEyeRight,
        LandmarkTypeRightEyeUp,
        LandmarkTypeRightPupil,
        LandmarkTypeUpperJawlineLeft,
        LandmarkTypeUpperJawlineRight
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LandmarkType = LandmarkType'
  { fromLandmarkType ::
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

pattern LandmarkTypeChinBottom :: LandmarkType
pattern LandmarkTypeChinBottom = LandmarkType' "chinBottom"

pattern LandmarkTypeEyeLeft :: LandmarkType
pattern LandmarkTypeEyeLeft = LandmarkType' "eyeLeft"

pattern LandmarkTypeEyeRight :: LandmarkType
pattern LandmarkTypeEyeRight = LandmarkType' "eyeRight"

pattern LandmarkTypeLeftEyeBrowLeft :: LandmarkType
pattern LandmarkTypeLeftEyeBrowLeft = LandmarkType' "leftEyeBrowLeft"

pattern LandmarkTypeLeftEyeBrowRight :: LandmarkType
pattern LandmarkTypeLeftEyeBrowRight = LandmarkType' "leftEyeBrowRight"

pattern LandmarkTypeLeftEyeBrowUp :: LandmarkType
pattern LandmarkTypeLeftEyeBrowUp = LandmarkType' "leftEyeBrowUp"

pattern LandmarkTypeLeftEyeDown :: LandmarkType
pattern LandmarkTypeLeftEyeDown = LandmarkType' "leftEyeDown"

pattern LandmarkTypeLeftEyeLeft :: LandmarkType
pattern LandmarkTypeLeftEyeLeft = LandmarkType' "leftEyeLeft"

pattern LandmarkTypeLeftEyeRight :: LandmarkType
pattern LandmarkTypeLeftEyeRight = LandmarkType' "leftEyeRight"

pattern LandmarkTypeLeftEyeUp :: LandmarkType
pattern LandmarkTypeLeftEyeUp = LandmarkType' "leftEyeUp"

pattern LandmarkTypeLeftPupil :: LandmarkType
pattern LandmarkTypeLeftPupil = LandmarkType' "leftPupil"

pattern LandmarkTypeMidJawlineLeft :: LandmarkType
pattern LandmarkTypeMidJawlineLeft = LandmarkType' "midJawlineLeft"

pattern LandmarkTypeMidJawlineRight :: LandmarkType
pattern LandmarkTypeMidJawlineRight = LandmarkType' "midJawlineRight"

pattern LandmarkTypeMouthDown :: LandmarkType
pattern LandmarkTypeMouthDown = LandmarkType' "mouthDown"

pattern LandmarkTypeMouthLeft :: LandmarkType
pattern LandmarkTypeMouthLeft = LandmarkType' "mouthLeft"

pattern LandmarkTypeMouthRight :: LandmarkType
pattern LandmarkTypeMouthRight = LandmarkType' "mouthRight"

pattern LandmarkTypeMouthUp :: LandmarkType
pattern LandmarkTypeMouthUp = LandmarkType' "mouthUp"

pattern LandmarkTypeNose :: LandmarkType
pattern LandmarkTypeNose = LandmarkType' "nose"

pattern LandmarkTypeNoseLeft :: LandmarkType
pattern LandmarkTypeNoseLeft = LandmarkType' "noseLeft"

pattern LandmarkTypeNoseRight :: LandmarkType
pattern LandmarkTypeNoseRight = LandmarkType' "noseRight"

pattern LandmarkTypeRightEyeBrowLeft :: LandmarkType
pattern LandmarkTypeRightEyeBrowLeft = LandmarkType' "rightEyeBrowLeft"

pattern LandmarkTypeRightEyeBrowRight :: LandmarkType
pattern LandmarkTypeRightEyeBrowRight = LandmarkType' "rightEyeBrowRight"

pattern LandmarkTypeRightEyeBrowUp :: LandmarkType
pattern LandmarkTypeRightEyeBrowUp = LandmarkType' "rightEyeBrowUp"

pattern LandmarkTypeRightEyeDown :: LandmarkType
pattern LandmarkTypeRightEyeDown = LandmarkType' "rightEyeDown"

pattern LandmarkTypeRightEyeLeft :: LandmarkType
pattern LandmarkTypeRightEyeLeft = LandmarkType' "rightEyeLeft"

pattern LandmarkTypeRightEyeRight :: LandmarkType
pattern LandmarkTypeRightEyeRight = LandmarkType' "rightEyeRight"

pattern LandmarkTypeRightEyeUp :: LandmarkType
pattern LandmarkTypeRightEyeUp = LandmarkType' "rightEyeUp"

pattern LandmarkTypeRightPupil :: LandmarkType
pattern LandmarkTypeRightPupil = LandmarkType' "rightPupil"

pattern LandmarkTypeUpperJawlineLeft :: LandmarkType
pattern LandmarkTypeUpperJawlineLeft = LandmarkType' "upperJawlineLeft"

pattern LandmarkTypeUpperJawlineRight :: LandmarkType
pattern LandmarkTypeUpperJawlineRight = LandmarkType' "upperJawlineRight"

{-# COMPLETE
  LandmarkTypeChinBottom,
  LandmarkTypeEyeLeft,
  LandmarkTypeEyeRight,
  LandmarkTypeLeftEyeBrowLeft,
  LandmarkTypeLeftEyeBrowRight,
  LandmarkTypeLeftEyeBrowUp,
  LandmarkTypeLeftEyeDown,
  LandmarkTypeLeftEyeLeft,
  LandmarkTypeLeftEyeRight,
  LandmarkTypeLeftEyeUp,
  LandmarkTypeLeftPupil,
  LandmarkTypeMidJawlineLeft,
  LandmarkTypeMidJawlineRight,
  LandmarkTypeMouthDown,
  LandmarkTypeMouthLeft,
  LandmarkTypeMouthRight,
  LandmarkTypeMouthUp,
  LandmarkTypeNose,
  LandmarkTypeNoseLeft,
  LandmarkTypeNoseRight,
  LandmarkTypeRightEyeBrowLeft,
  LandmarkTypeRightEyeBrowRight,
  LandmarkTypeRightEyeBrowUp,
  LandmarkTypeRightEyeDown,
  LandmarkTypeRightEyeLeft,
  LandmarkTypeRightEyeRight,
  LandmarkTypeRightEyeUp,
  LandmarkTypeRightPupil,
  LandmarkTypeUpperJawlineLeft,
  LandmarkTypeUpperJawlineRight,
  LandmarkType'
  #-}

instance Prelude.FromText LandmarkType where
  parser = LandmarkType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LandmarkType where
  toText (LandmarkType' x) = x

instance Prelude.Hashable LandmarkType

instance Prelude.NFData LandmarkType

instance Prelude.ToByteString LandmarkType

instance Prelude.ToQuery LandmarkType

instance Prelude.ToHeader LandmarkType

instance Prelude.FromJSON LandmarkType where
  parseJSON = Prelude.parseJSONText "LandmarkType"
