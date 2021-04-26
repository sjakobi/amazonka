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
-- Module      : Network.AWS.Rekognition.Types.SegmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.SegmentType
  ( SegmentType
      ( ..,
        SegmentTypeSHOT,
        SegmentTypeTECHNICALCUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SegmentType = SegmentType'
  { fromSegmentType ::
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

pattern SegmentTypeSHOT :: SegmentType
pattern SegmentTypeSHOT = SegmentType' "SHOT"

pattern SegmentTypeTECHNICALCUE :: SegmentType
pattern SegmentTypeTECHNICALCUE = SegmentType' "TECHNICAL_CUE"

{-# COMPLETE
  SegmentTypeSHOT,
  SegmentTypeTECHNICALCUE,
  SegmentType'
  #-}

instance Prelude.FromText SegmentType where
  parser = SegmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SegmentType where
  toText (SegmentType' x) = x

instance Prelude.Hashable SegmentType

instance Prelude.NFData SegmentType

instance Prelude.ToByteString SegmentType

instance Prelude.ToQuery SegmentType

instance Prelude.ToHeader SegmentType

instance Prelude.ToJSON SegmentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SegmentType where
  parseJSON = Prelude.parseJSONText "SegmentType"
