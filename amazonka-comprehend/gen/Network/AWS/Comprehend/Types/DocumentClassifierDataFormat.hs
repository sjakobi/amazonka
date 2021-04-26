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
-- Module      : Network.AWS.Comprehend.Types.DocumentClassifierDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.DocumentClassifierDataFormat
  ( DocumentClassifierDataFormat
      ( ..,
        DocumentClassifierDataFormatAUGMENTEDMANIFEST,
        DocumentClassifierDataFormatCOMPREHENDCSV
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentClassifierDataFormat = DocumentClassifierDataFormat'
  { fromDocumentClassifierDataFormat ::
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

pattern DocumentClassifierDataFormatAUGMENTEDMANIFEST :: DocumentClassifierDataFormat
pattern DocumentClassifierDataFormatAUGMENTEDMANIFEST = DocumentClassifierDataFormat' "AUGMENTED_MANIFEST"

pattern DocumentClassifierDataFormatCOMPREHENDCSV :: DocumentClassifierDataFormat
pattern DocumentClassifierDataFormatCOMPREHENDCSV = DocumentClassifierDataFormat' "COMPREHEND_CSV"

{-# COMPLETE
  DocumentClassifierDataFormatAUGMENTEDMANIFEST,
  DocumentClassifierDataFormatCOMPREHENDCSV,
  DocumentClassifierDataFormat'
  #-}

instance Prelude.FromText DocumentClassifierDataFormat where
  parser = DocumentClassifierDataFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentClassifierDataFormat where
  toText (DocumentClassifierDataFormat' x) = x

instance Prelude.Hashable DocumentClassifierDataFormat

instance Prelude.NFData DocumentClassifierDataFormat

instance Prelude.ToByteString DocumentClassifierDataFormat

instance Prelude.ToQuery DocumentClassifierDataFormat

instance Prelude.ToHeader DocumentClassifierDataFormat

instance Prelude.ToJSON DocumentClassifierDataFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DocumentClassifierDataFormat where
  parseJSON = Prelude.parseJSONText "DocumentClassifierDataFormat"
