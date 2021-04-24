{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlerTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlerTargets where

import Network.AWS.Glue.Types.CatalogTarget
import Network.AWS.Glue.Types.DynamoDBTarget
import Network.AWS.Glue.Types.JdbcTarget
import Network.AWS.Glue.Types.MongoDBTarget
import Network.AWS.Glue.Types.S3Target
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies data stores to crawl.
--
--
--
-- /See:/ 'crawlerTargets' smart constructor.
data CrawlerTargets = CrawlerTargets'
  { _ctCatalogTargets ::
      !(Maybe [CatalogTarget]),
    _ctMongoDBTargets ::
      !(Maybe [MongoDBTarget]),
    _ctDynamoDBTargets ::
      !(Maybe [DynamoDBTarget]),
    _ctJdbcTargets :: !(Maybe [JdbcTarget]),
    _ctS3Targets :: !(Maybe [S3Target])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CrawlerTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctCatalogTargets' - Specifies AWS Glue Data Catalog targets.
--
-- * 'ctMongoDBTargets' - Specifies Amazon DocumentDB or MongoDB targets.
--
-- * 'ctDynamoDBTargets' - Specifies Amazon DynamoDB targets.
--
-- * 'ctJdbcTargets' - Specifies JDBC targets.
--
-- * 'ctS3Targets' - Specifies Amazon Simple Storage Service (Amazon S3) targets.
crawlerTargets ::
  CrawlerTargets
crawlerTargets =
  CrawlerTargets'
    { _ctCatalogTargets = Nothing,
      _ctMongoDBTargets = Nothing,
      _ctDynamoDBTargets = Nothing,
      _ctJdbcTargets = Nothing,
      _ctS3Targets = Nothing
    }

-- | Specifies AWS Glue Data Catalog targets.
ctCatalogTargets :: Lens' CrawlerTargets [CatalogTarget]
ctCatalogTargets = lens _ctCatalogTargets (\s a -> s {_ctCatalogTargets = a}) . _Default . _Coerce

-- | Specifies Amazon DocumentDB or MongoDB targets.
ctMongoDBTargets :: Lens' CrawlerTargets [MongoDBTarget]
ctMongoDBTargets = lens _ctMongoDBTargets (\s a -> s {_ctMongoDBTargets = a}) . _Default . _Coerce

-- | Specifies Amazon DynamoDB targets.
ctDynamoDBTargets :: Lens' CrawlerTargets [DynamoDBTarget]
ctDynamoDBTargets = lens _ctDynamoDBTargets (\s a -> s {_ctDynamoDBTargets = a}) . _Default . _Coerce

-- | Specifies JDBC targets.
ctJdbcTargets :: Lens' CrawlerTargets [JdbcTarget]
ctJdbcTargets = lens _ctJdbcTargets (\s a -> s {_ctJdbcTargets = a}) . _Default . _Coerce

-- | Specifies Amazon Simple Storage Service (Amazon S3) targets.
ctS3Targets :: Lens' CrawlerTargets [S3Target]
ctS3Targets = lens _ctS3Targets (\s a -> s {_ctS3Targets = a}) . _Default . _Coerce

instance FromJSON CrawlerTargets where
  parseJSON =
    withObject
      "CrawlerTargets"
      ( \x ->
          CrawlerTargets'
            <$> (x .:? "CatalogTargets" .!= mempty)
            <*> (x .:? "MongoDBTargets" .!= mempty)
            <*> (x .:? "DynamoDBTargets" .!= mempty)
            <*> (x .:? "JdbcTargets" .!= mempty)
            <*> (x .:? "S3Targets" .!= mempty)
      )

instance Hashable CrawlerTargets

instance NFData CrawlerTargets

instance ToJSON CrawlerTargets where
  toJSON CrawlerTargets' {..} =
    object
      ( catMaybes
          [ ("CatalogTargets" .=) <$> _ctCatalogTargets,
            ("MongoDBTargets" .=) <$> _ctMongoDBTargets,
            ("DynamoDBTargets" .=) <$> _ctDynamoDBTargets,
            ("JdbcTargets" .=) <$> _ctJdbcTargets,
            ("S3Targets" .=) <$> _ctS3Targets
          ]
      )
