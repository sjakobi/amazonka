{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SplitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SplitType
  ( SplitType
      ( ..,
        STLine,
        STNone,
        STRecordIO,
        STTFRecord
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SplitType = SplitType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern STLine :: SplitType
pattern STLine = SplitType' "Line"

pattern STNone :: SplitType
pattern STNone = SplitType' "None"

pattern STRecordIO :: SplitType
pattern STRecordIO = SplitType' "RecordIO"

pattern STTFRecord :: SplitType
pattern STTFRecord = SplitType' "TFRecord"

{-# COMPLETE
  STLine,
  STNone,
  STRecordIO,
  STTFRecord,
  SplitType'
  #-}

instance FromText SplitType where
  parser = (SplitType' . mk) <$> takeText

instance ToText SplitType where
  toText (SplitType' ci) = original ci

instance Hashable SplitType

instance NFData SplitType

instance ToByteString SplitType

instance ToQuery SplitType

instance ToHeader SplitType

instance ToJSON SplitType where
  toJSON = toJSONText

instance FromJSON SplitType where
  parseJSON = parseJSONText "SplitType"
