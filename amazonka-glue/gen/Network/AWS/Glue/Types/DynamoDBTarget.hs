{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DynamoDBTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DynamoDBTarget where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies an Amazon DynamoDB table to crawl.
--
--
--
-- /See:/ 'dynamoDBTarget' smart constructor.
data DynamoDBTarget = DynamoDBTarget'
  { _ddtScanAll ::
      !(Maybe Bool),
    _ddtScanRate :: !(Maybe Double),
    _ddtPath :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DynamoDBTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddtScanAll' - Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. A value of @true@ means to scan all records, while a value of @false@ means to sample the records. If no value is specified, the value defaults to @true@ .
--
-- * 'ddtScanRate' - The percentage of the configured read capacity units to use by the AWS Glue crawler. Read capacity units is a term defined by DynamoDB, and is a numeric value that acts as rate limiter for the number of reads that can be performed on that table per second. The valid values are null or a value between 0.1 to 1.5. A null value is used when user does not provide a value, and defaults to 0.5 of the configured Read Capacity Unit (for provisioned tables), or 0.25 of the max configured Read Capacity Unit (for tables using on-demand mode).
--
-- * 'ddtPath' - The name of the DynamoDB table to crawl.
dynamoDBTarget ::
  DynamoDBTarget
dynamoDBTarget =
  DynamoDBTarget'
    { _ddtScanAll = Nothing,
      _ddtScanRate = Nothing,
      _ddtPath = Nothing
    }

-- | Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. A value of @true@ means to scan all records, while a value of @false@ means to sample the records. If no value is specified, the value defaults to @true@ .
ddtScanAll :: Lens' DynamoDBTarget (Maybe Bool)
ddtScanAll = lens _ddtScanAll (\s a -> s {_ddtScanAll = a})

-- | The percentage of the configured read capacity units to use by the AWS Glue crawler. Read capacity units is a term defined by DynamoDB, and is a numeric value that acts as rate limiter for the number of reads that can be performed on that table per second. The valid values are null or a value between 0.1 to 1.5. A null value is used when user does not provide a value, and defaults to 0.5 of the configured Read Capacity Unit (for provisioned tables), or 0.25 of the max configured Read Capacity Unit (for tables using on-demand mode).
ddtScanRate :: Lens' DynamoDBTarget (Maybe Double)
ddtScanRate = lens _ddtScanRate (\s a -> s {_ddtScanRate = a})

-- | The name of the DynamoDB table to crawl.
ddtPath :: Lens' DynamoDBTarget (Maybe Text)
ddtPath = lens _ddtPath (\s a -> s {_ddtPath = a})

instance FromJSON DynamoDBTarget where
  parseJSON =
    withObject
      "DynamoDBTarget"
      ( \x ->
          DynamoDBTarget'
            <$> (x .:? "scanAll")
            <*> (x .:? "scanRate")
            <*> (x .:? "Path")
      )

instance Hashable DynamoDBTarget

instance NFData DynamoDBTarget

instance ToJSON DynamoDBTarget where
  toJSON DynamoDBTarget' {..} =
    object
      ( catMaybes
          [ ("scanAll" .=) <$> _ddtScanAll,
            ("scanRate" .=) <$> _ddtScanRate,
            ("Path" .=) <$> _ddtPath
          ]
      )
