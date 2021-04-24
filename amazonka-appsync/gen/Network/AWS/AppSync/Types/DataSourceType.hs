{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.DataSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.DataSourceType
  ( DataSourceType
      ( ..,
        DSTAWSLambda,
        DSTAmazonDynamodb,
        DSTAmazonElasticsearch,
        DSTHTTP,
        DSTNone,
        DSTRelationalDatabase
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataSourceType = DataSourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSTAWSLambda :: DataSourceType
pattern DSTAWSLambda = DataSourceType' "AWS_LAMBDA"

pattern DSTAmazonDynamodb :: DataSourceType
pattern DSTAmazonDynamodb = DataSourceType' "AMAZON_DYNAMODB"

pattern DSTAmazonElasticsearch :: DataSourceType
pattern DSTAmazonElasticsearch = DataSourceType' "AMAZON_ELASTICSEARCH"

pattern DSTHTTP :: DataSourceType
pattern DSTHTTP = DataSourceType' "HTTP"

pattern DSTNone :: DataSourceType
pattern DSTNone = DataSourceType' "NONE"

pattern DSTRelationalDatabase :: DataSourceType
pattern DSTRelationalDatabase = DataSourceType' "RELATIONAL_DATABASE"

{-# COMPLETE
  DSTAWSLambda,
  DSTAmazonDynamodb,
  DSTAmazonElasticsearch,
  DSTHTTP,
  DSTNone,
  DSTRelationalDatabase,
  DataSourceType'
  #-}

instance FromText DataSourceType where
  parser = (DataSourceType' . mk) <$> takeText

instance ToText DataSourceType where
  toText (DataSourceType' ci) = original ci

instance Hashable DataSourceType

instance NFData DataSourceType

instance ToByteString DataSourceType

instance ToQuery DataSourceType

instance ToHeader DataSourceType

instance ToJSON DataSourceType where
  toJSON = toJSONText

instance FromJSON DataSourceType where
  parseJSON = parseJSONText "DataSourceType"
