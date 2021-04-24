{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RecordWrapper
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RecordWrapper
  ( RecordWrapper
      ( ..,
        RWNone,
        RWRecordIO
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecordWrapper = RecordWrapper' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RWNone :: RecordWrapper
pattern RWNone = RecordWrapper' "None"

pattern RWRecordIO :: RecordWrapper
pattern RWRecordIO = RecordWrapper' "RecordIO"

{-# COMPLETE
  RWNone,
  RWRecordIO,
  RecordWrapper'
  #-}

instance FromText RecordWrapper where
  parser = (RecordWrapper' . mk) <$> takeText

instance ToText RecordWrapper where
  toText (RecordWrapper' ci) = original ci

instance Hashable RecordWrapper

instance NFData RecordWrapper

instance ToByteString RecordWrapper

instance ToQuery RecordWrapper

instance ToHeader RecordWrapper

instance ToJSON RecordWrapper where
  toJSON = toJSONText

instance FromJSON RecordWrapper where
  parseJSON = parseJSONText "RecordWrapper"
