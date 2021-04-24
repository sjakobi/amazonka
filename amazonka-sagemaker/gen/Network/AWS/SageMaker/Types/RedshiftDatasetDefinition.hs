{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RedshiftDatasetDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RedshiftDatasetDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.RedshiftResultCompressionType
import Network.AWS.SageMaker.Types.RedshiftResultFormat

-- | Configuration for Redshift Dataset Definition input.
--
--
--
-- /See:/ 'redshiftDatasetDefinition' smart constructor.
data RedshiftDatasetDefinition = RedshiftDatasetDefinition'
  { _rddOutputCompression ::
      !( Maybe
           RedshiftResultCompressionType
       ),
    _rddKMSKeyId ::
      !(Maybe Text),
    _rddClusterId ::
      !Text,
    _rddDatabase ::
      !Text,
    _rddDBUser :: !Text,
    _rddQueryString ::
      !Text,
    _rddClusterRoleARN ::
      !Text,
    _rddOutputS3URI ::
      !Text,
    _rddOutputFormat ::
      !RedshiftResultFormat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RedshiftDatasetDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddOutputCompression' - Undocumented member.
--
-- * 'rddKMSKeyId' - The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data from a Redshift execution.
--
-- * 'rddClusterId' - Undocumented member.
--
-- * 'rddDatabase' - Undocumented member.
--
-- * 'rddDBUser' - Undocumented member.
--
-- * 'rddQueryString' - Undocumented member.
--
-- * 'rddClusterRoleARN' - The IAM role attached to your Redshift cluster that Amazon SageMaker uses to generate datasets.
--
-- * 'rddOutputS3URI' - The location in Amazon S3 where the Redshift query results are stored.
--
-- * 'rddOutputFormat' - Undocumented member.
redshiftDatasetDefinition ::
  -- | 'rddClusterId'
  Text ->
  -- | 'rddDatabase'
  Text ->
  -- | 'rddDBUser'
  Text ->
  -- | 'rddQueryString'
  Text ->
  -- | 'rddClusterRoleARN'
  Text ->
  -- | 'rddOutputS3URI'
  Text ->
  -- | 'rddOutputFormat'
  RedshiftResultFormat ->
  RedshiftDatasetDefinition
redshiftDatasetDefinition
  pClusterId_
  pDatabase_
  pDBUser_
  pQueryString_
  pClusterRoleARN_
  pOutputS3URI_
  pOutputFormat_ =
    RedshiftDatasetDefinition'
      { _rddOutputCompression =
          Nothing,
        _rddKMSKeyId = Nothing,
        _rddClusterId = pClusterId_,
        _rddDatabase = pDatabase_,
        _rddDBUser = pDBUser_,
        _rddQueryString = pQueryString_,
        _rddClusterRoleARN = pClusterRoleARN_,
        _rddOutputS3URI = pOutputS3URI_,
        _rddOutputFormat = pOutputFormat_
      }

-- | Undocumented member.
rddOutputCompression :: Lens' RedshiftDatasetDefinition (Maybe RedshiftResultCompressionType)
rddOutputCompression = lens _rddOutputCompression (\s a -> s {_rddOutputCompression = a})

-- | The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data from a Redshift execution.
rddKMSKeyId :: Lens' RedshiftDatasetDefinition (Maybe Text)
rddKMSKeyId = lens _rddKMSKeyId (\s a -> s {_rddKMSKeyId = a})

-- | Undocumented member.
rddClusterId :: Lens' RedshiftDatasetDefinition Text
rddClusterId = lens _rddClusterId (\s a -> s {_rddClusterId = a})

-- | Undocumented member.
rddDatabase :: Lens' RedshiftDatasetDefinition Text
rddDatabase = lens _rddDatabase (\s a -> s {_rddDatabase = a})

-- | Undocumented member.
rddDBUser :: Lens' RedshiftDatasetDefinition Text
rddDBUser = lens _rddDBUser (\s a -> s {_rddDBUser = a})

-- | Undocumented member.
rddQueryString :: Lens' RedshiftDatasetDefinition Text
rddQueryString = lens _rddQueryString (\s a -> s {_rddQueryString = a})

-- | The IAM role attached to your Redshift cluster that Amazon SageMaker uses to generate datasets.
rddClusterRoleARN :: Lens' RedshiftDatasetDefinition Text
rddClusterRoleARN = lens _rddClusterRoleARN (\s a -> s {_rddClusterRoleARN = a})

-- | The location in Amazon S3 where the Redshift query results are stored.
rddOutputS3URI :: Lens' RedshiftDatasetDefinition Text
rddOutputS3URI = lens _rddOutputS3URI (\s a -> s {_rddOutputS3URI = a})

-- | Undocumented member.
rddOutputFormat :: Lens' RedshiftDatasetDefinition RedshiftResultFormat
rddOutputFormat = lens _rddOutputFormat (\s a -> s {_rddOutputFormat = a})

instance FromJSON RedshiftDatasetDefinition where
  parseJSON =
    withObject
      "RedshiftDatasetDefinition"
      ( \x ->
          RedshiftDatasetDefinition'
            <$> (x .:? "OutputCompression")
            <*> (x .:? "KmsKeyId")
            <*> (x .: "ClusterId")
            <*> (x .: "Database")
            <*> (x .: "DbUser")
            <*> (x .: "QueryString")
            <*> (x .: "ClusterRoleArn")
            <*> (x .: "OutputS3Uri")
            <*> (x .: "OutputFormat")
      )

instance Hashable RedshiftDatasetDefinition

instance NFData RedshiftDatasetDefinition

instance ToJSON RedshiftDatasetDefinition where
  toJSON RedshiftDatasetDefinition' {..} =
    object
      ( catMaybes
          [ ("OutputCompression" .=) <$> _rddOutputCompression,
            ("KmsKeyId" .=) <$> _rddKMSKeyId,
            Just ("ClusterId" .= _rddClusterId),
            Just ("Database" .= _rddDatabase),
            Just ("DbUser" .= _rddDBUser),
            Just ("QueryString" .= _rddQueryString),
            Just ("ClusterRoleArn" .= _rddClusterRoleARN),
            Just ("OutputS3Uri" .= _rddOutputS3URI),
            Just ("OutputFormat" .= _rddOutputFormat)
          ]
      )
