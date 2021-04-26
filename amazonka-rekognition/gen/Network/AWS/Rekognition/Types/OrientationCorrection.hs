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
-- Module      : Network.AWS.Rekognition.Types.OrientationCorrection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.OrientationCorrection
  ( OrientationCorrection
      ( ..,
        OrientationCorrectionROTATE0,
        OrientationCorrectionROTATE180,
        OrientationCorrectionROTATE270,
        OrientationCorrectionROTATE90
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrientationCorrection = OrientationCorrection'
  { fromOrientationCorrection ::
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

pattern OrientationCorrectionROTATE0 :: OrientationCorrection
pattern OrientationCorrectionROTATE0 = OrientationCorrection' "ROTATE_0"

pattern OrientationCorrectionROTATE180 :: OrientationCorrection
pattern OrientationCorrectionROTATE180 = OrientationCorrection' "ROTATE_180"

pattern OrientationCorrectionROTATE270 :: OrientationCorrection
pattern OrientationCorrectionROTATE270 = OrientationCorrection' "ROTATE_270"

pattern OrientationCorrectionROTATE90 :: OrientationCorrection
pattern OrientationCorrectionROTATE90 = OrientationCorrection' "ROTATE_90"

{-# COMPLETE
  OrientationCorrectionROTATE0,
  OrientationCorrectionROTATE180,
  OrientationCorrectionROTATE270,
  OrientationCorrectionROTATE90,
  OrientationCorrection'
  #-}

instance Prelude.FromText OrientationCorrection where
  parser = OrientationCorrection' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrientationCorrection where
  toText (OrientationCorrection' x) = x

instance Prelude.Hashable OrientationCorrection

instance Prelude.NFData OrientationCorrection

instance Prelude.ToByteString OrientationCorrection

instance Prelude.ToQuery OrientationCorrection

instance Prelude.ToHeader OrientationCorrection

instance Prelude.FromJSON OrientationCorrection where
  parseJSON = Prelude.parseJSONText "OrientationCorrection"
