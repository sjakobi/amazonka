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
-- Module      : Network.AWS.Rekognition.Types.LabelDetectionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.LabelDetectionSortBy
  ( LabelDetectionSortBy
      ( ..,
        LabelDetectionSortByNAME,
        LabelDetectionSortByTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LabelDetectionSortBy = LabelDetectionSortBy'
  { fromLabelDetectionSortBy ::
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

pattern LabelDetectionSortByNAME :: LabelDetectionSortBy
pattern LabelDetectionSortByNAME = LabelDetectionSortBy' "NAME"

pattern LabelDetectionSortByTIMESTAMP :: LabelDetectionSortBy
pattern LabelDetectionSortByTIMESTAMP = LabelDetectionSortBy' "TIMESTAMP"

{-# COMPLETE
  LabelDetectionSortByNAME,
  LabelDetectionSortByTIMESTAMP,
  LabelDetectionSortBy'
  #-}

instance Prelude.FromText LabelDetectionSortBy where
  parser = LabelDetectionSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText LabelDetectionSortBy where
  toText (LabelDetectionSortBy' x) = x

instance Prelude.Hashable LabelDetectionSortBy

instance Prelude.NFData LabelDetectionSortBy

instance Prelude.ToByteString LabelDetectionSortBy

instance Prelude.ToQuery LabelDetectionSortBy

instance Prelude.ToHeader LabelDetectionSortBy

instance Prelude.ToJSON LabelDetectionSortBy where
  toJSON = Prelude.toJSONText
