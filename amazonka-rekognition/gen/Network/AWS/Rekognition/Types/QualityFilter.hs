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
-- Module      : Network.AWS.Rekognition.Types.QualityFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.QualityFilter
  ( QualityFilter
      ( ..,
        QualityFilterAUTO,
        QualityFilterHIGH,
        QualityFilterLOW,
        QualityFilterMEDIUM,
        QualityFilterNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QualityFilter = QualityFilter'
  { fromQualityFilter ::
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

pattern QualityFilterAUTO :: QualityFilter
pattern QualityFilterAUTO = QualityFilter' "AUTO"

pattern QualityFilterHIGH :: QualityFilter
pattern QualityFilterHIGH = QualityFilter' "HIGH"

pattern QualityFilterLOW :: QualityFilter
pattern QualityFilterLOW = QualityFilter' "LOW"

pattern QualityFilterMEDIUM :: QualityFilter
pattern QualityFilterMEDIUM = QualityFilter' "MEDIUM"

pattern QualityFilterNONE :: QualityFilter
pattern QualityFilterNONE = QualityFilter' "NONE"

{-# COMPLETE
  QualityFilterAUTO,
  QualityFilterHIGH,
  QualityFilterLOW,
  QualityFilterMEDIUM,
  QualityFilterNONE,
  QualityFilter'
  #-}

instance Prelude.FromText QualityFilter where
  parser = QualityFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText QualityFilter where
  toText (QualityFilter' x) = x

instance Prelude.Hashable QualityFilter

instance Prelude.NFData QualityFilter

instance Prelude.ToByteString QualityFilter

instance Prelude.ToQuery QualityFilter

instance Prelude.ToHeader QualityFilter

instance Prelude.ToJSON QualityFilter where
  toJSON = Prelude.toJSONText
