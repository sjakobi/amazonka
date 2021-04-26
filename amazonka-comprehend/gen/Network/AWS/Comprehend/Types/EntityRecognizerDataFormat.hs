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
-- Module      : Network.AWS.Comprehend.Types.EntityRecognizerDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntityRecognizerDataFormat
  ( EntityRecognizerDataFormat
      ( ..,
        EntityRecognizerDataFormatAUGMENTEDMANIFEST,
        EntityRecognizerDataFormatCOMPREHENDCSV
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EntityRecognizerDataFormat = EntityRecognizerDataFormat'
  { fromEntityRecognizerDataFormat ::
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

pattern EntityRecognizerDataFormatAUGMENTEDMANIFEST :: EntityRecognizerDataFormat
pattern EntityRecognizerDataFormatAUGMENTEDMANIFEST = EntityRecognizerDataFormat' "AUGMENTED_MANIFEST"

pattern EntityRecognizerDataFormatCOMPREHENDCSV :: EntityRecognizerDataFormat
pattern EntityRecognizerDataFormatCOMPREHENDCSV = EntityRecognizerDataFormat' "COMPREHEND_CSV"

{-# COMPLETE
  EntityRecognizerDataFormatAUGMENTEDMANIFEST,
  EntityRecognizerDataFormatCOMPREHENDCSV,
  EntityRecognizerDataFormat'
  #-}

instance Prelude.FromText EntityRecognizerDataFormat where
  parser = EntityRecognizerDataFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText EntityRecognizerDataFormat where
  toText (EntityRecognizerDataFormat' x) = x

instance Prelude.Hashable EntityRecognizerDataFormat

instance Prelude.NFData EntityRecognizerDataFormat

instance Prelude.ToByteString EntityRecognizerDataFormat

instance Prelude.ToQuery EntityRecognizerDataFormat

instance Prelude.ToHeader EntityRecognizerDataFormat

instance Prelude.ToJSON EntityRecognizerDataFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EntityRecognizerDataFormat where
  parseJSON = Prelude.parseJSONText "EntityRecognizerDataFormat"
