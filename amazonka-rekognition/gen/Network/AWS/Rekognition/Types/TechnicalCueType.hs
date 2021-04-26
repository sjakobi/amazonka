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
-- Module      : Network.AWS.Rekognition.Types.TechnicalCueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.TechnicalCueType
  ( TechnicalCueType
      ( ..,
        TechnicalCueTypeBlackFrames,
        TechnicalCueTypeColorBars,
        TechnicalCueTypeEndCredits
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TechnicalCueType = TechnicalCueType'
  { fromTechnicalCueType ::
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

pattern TechnicalCueTypeBlackFrames :: TechnicalCueType
pattern TechnicalCueTypeBlackFrames = TechnicalCueType' "BlackFrames"

pattern TechnicalCueTypeColorBars :: TechnicalCueType
pattern TechnicalCueTypeColorBars = TechnicalCueType' "ColorBars"

pattern TechnicalCueTypeEndCredits :: TechnicalCueType
pattern TechnicalCueTypeEndCredits = TechnicalCueType' "EndCredits"

{-# COMPLETE
  TechnicalCueTypeBlackFrames,
  TechnicalCueTypeColorBars,
  TechnicalCueTypeEndCredits,
  TechnicalCueType'
  #-}

instance Prelude.FromText TechnicalCueType where
  parser = TechnicalCueType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TechnicalCueType where
  toText (TechnicalCueType' x) = x

instance Prelude.Hashable TechnicalCueType

instance Prelude.NFData TechnicalCueType

instance Prelude.ToByteString TechnicalCueType

instance Prelude.ToQuery TechnicalCueType

instance Prelude.ToHeader TechnicalCueType

instance Prelude.FromJSON TechnicalCueType where
  parseJSON = Prelude.parseJSONText "TechnicalCueType"
