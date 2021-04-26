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
-- Module      : Network.AWS.Rekognition.Types.Reason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Reason
  ( Reason
      ( ..,
        ReasonEXCEEDSMAXFACES,
        ReasonEXTREMEPOSE,
        ReasonLOWBRIGHTNESS,
        ReasonLOWCONFIDENCE,
        ReasonLOWFACEQUALITY,
        ReasonLOWSHARPNESS,
        ReasonSMALLBOUNDINGBOX
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Reason = Reason' {fromReason :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ReasonEXCEEDSMAXFACES :: Reason
pattern ReasonEXCEEDSMAXFACES = Reason' "EXCEEDS_MAX_FACES"

pattern ReasonEXTREMEPOSE :: Reason
pattern ReasonEXTREMEPOSE = Reason' "EXTREME_POSE"

pattern ReasonLOWBRIGHTNESS :: Reason
pattern ReasonLOWBRIGHTNESS = Reason' "LOW_BRIGHTNESS"

pattern ReasonLOWCONFIDENCE :: Reason
pattern ReasonLOWCONFIDENCE = Reason' "LOW_CONFIDENCE"

pattern ReasonLOWFACEQUALITY :: Reason
pattern ReasonLOWFACEQUALITY = Reason' "LOW_FACE_QUALITY"

pattern ReasonLOWSHARPNESS :: Reason
pattern ReasonLOWSHARPNESS = Reason' "LOW_SHARPNESS"

pattern ReasonSMALLBOUNDINGBOX :: Reason
pattern ReasonSMALLBOUNDINGBOX = Reason' "SMALL_BOUNDING_BOX"

{-# COMPLETE
  ReasonEXCEEDSMAXFACES,
  ReasonEXTREMEPOSE,
  ReasonLOWBRIGHTNESS,
  ReasonLOWCONFIDENCE,
  ReasonLOWFACEQUALITY,
  ReasonLOWSHARPNESS,
  ReasonSMALLBOUNDINGBOX,
  Reason'
  #-}

instance Prelude.FromText Reason where
  parser = Reason' Prelude.<$> Prelude.takeText

instance Prelude.ToText Reason where
  toText (Reason' x) = x

instance Prelude.Hashable Reason

instance Prelude.NFData Reason

instance Prelude.ToByteString Reason

instance Prelude.ToQuery Reason

instance Prelude.ToHeader Reason

instance Prelude.FromJSON Reason where
  parseJSON = Prelude.parseJSONText "Reason"
