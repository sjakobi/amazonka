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
-- Module      : Network.AWS.Rekognition.Types.CelebrityRecognitionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.CelebrityRecognitionSortBy
  ( CelebrityRecognitionSortBy
      ( ..,
        CelebrityRecognitionSortByID,
        CelebrityRecognitionSortByTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CelebrityRecognitionSortBy = CelebrityRecognitionSortBy'
  { fromCelebrityRecognitionSortBy ::
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

pattern CelebrityRecognitionSortByID :: CelebrityRecognitionSortBy
pattern CelebrityRecognitionSortByID = CelebrityRecognitionSortBy' "ID"

pattern CelebrityRecognitionSortByTIMESTAMP :: CelebrityRecognitionSortBy
pattern CelebrityRecognitionSortByTIMESTAMP = CelebrityRecognitionSortBy' "TIMESTAMP"

{-# COMPLETE
  CelebrityRecognitionSortByID,
  CelebrityRecognitionSortByTIMESTAMP,
  CelebrityRecognitionSortBy'
  #-}

instance Prelude.FromText CelebrityRecognitionSortBy where
  parser = CelebrityRecognitionSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText CelebrityRecognitionSortBy where
  toText (CelebrityRecognitionSortBy' x) = x

instance Prelude.Hashable CelebrityRecognitionSortBy

instance Prelude.NFData CelebrityRecognitionSortBy

instance Prelude.ToByteString CelebrityRecognitionSortBy

instance Prelude.ToQuery CelebrityRecognitionSortBy

instance Prelude.ToHeader CelebrityRecognitionSortBy

instance Prelude.ToJSON CelebrityRecognitionSortBy where
  toJSON = Prelude.toJSONText
