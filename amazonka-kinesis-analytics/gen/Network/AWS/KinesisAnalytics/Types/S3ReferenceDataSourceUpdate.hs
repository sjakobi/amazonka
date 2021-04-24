{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.S3ReferenceDataSourceUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.S3ReferenceDataSourceUpdate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.
--
--
--
-- /See:/ 's3ReferenceDataSourceUpdate' smart constructor.
data S3ReferenceDataSourceUpdate = S3ReferenceDataSourceUpdate'
  { _srdsuReferenceRoleARNUpdate ::
      !(Maybe Text),
    _srdsuFileKeyUpdate ::
      !(Maybe Text),
    _srdsuBucketARNUpdate ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'S3ReferenceDataSourceUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srdsuReferenceRoleARNUpdate' - ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.
--
-- * 'srdsuFileKeyUpdate' - Object key name.
--
-- * 'srdsuBucketARNUpdate' - Amazon Resource Name (ARN) of the S3 bucket.
s3ReferenceDataSourceUpdate ::
  S3ReferenceDataSourceUpdate
s3ReferenceDataSourceUpdate =
  S3ReferenceDataSourceUpdate'
    { _srdsuReferenceRoleARNUpdate =
        Nothing,
      _srdsuFileKeyUpdate = Nothing,
      _srdsuBucketARNUpdate = Nothing
    }

-- | ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.
srdsuReferenceRoleARNUpdate :: Lens' S3ReferenceDataSourceUpdate (Maybe Text)
srdsuReferenceRoleARNUpdate = lens _srdsuReferenceRoleARNUpdate (\s a -> s {_srdsuReferenceRoleARNUpdate = a})

-- | Object key name.
srdsuFileKeyUpdate :: Lens' S3ReferenceDataSourceUpdate (Maybe Text)
srdsuFileKeyUpdate = lens _srdsuFileKeyUpdate (\s a -> s {_srdsuFileKeyUpdate = a})

-- | Amazon Resource Name (ARN) of the S3 bucket.
srdsuBucketARNUpdate :: Lens' S3ReferenceDataSourceUpdate (Maybe Text)
srdsuBucketARNUpdate = lens _srdsuBucketARNUpdate (\s a -> s {_srdsuBucketARNUpdate = a})

instance Hashable S3ReferenceDataSourceUpdate

instance NFData S3ReferenceDataSourceUpdate

instance ToJSON S3ReferenceDataSourceUpdate where
  toJSON S3ReferenceDataSourceUpdate' {..} =
    object
      ( catMaybes
          [ ("ReferenceRoleARNUpdate" .=)
              <$> _srdsuReferenceRoleARNUpdate,
            ("FileKeyUpdate" .=) <$> _srdsuFileKeyUpdate,
            ("BucketARNUpdate" .=) <$> _srdsuBucketARNUpdate
          ]
      )
