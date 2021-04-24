{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ExportFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ExportFormat
  ( ExportFormat
      ( ..,
        DynamodbJSON,
        Ion
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExportFormat = ExportFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DynamodbJSON :: ExportFormat
pattern DynamodbJSON = ExportFormat' "DYNAMODB_JSON"

pattern Ion :: ExportFormat
pattern Ion = ExportFormat' "ION"

{-# COMPLETE
  DynamodbJSON,
  Ion,
  ExportFormat'
  #-}

instance FromText ExportFormat where
  parser = (ExportFormat' . mk) <$> takeText

instance ToText ExportFormat where
  toText (ExportFormat' ci) = original ci

instance Hashable ExportFormat

instance NFData ExportFormat

instance ToByteString ExportFormat

instance ToQuery ExportFormat

instance ToHeader ExportFormat

instance ToJSON ExportFormat where
  toJSON = toJSONText

instance FromJSON ExportFormat where
  parseJSON = parseJSONText "ExportFormat"
