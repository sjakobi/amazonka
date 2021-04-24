{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AthenaDatasetDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AthenaDatasetDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AthenaResultCompressionType
import Network.AWS.SageMaker.Types.AthenaResultFormat

-- | Configuration for Athena Dataset Definition input.
--
--
--
-- /See:/ 'athenaDatasetDefinition' smart constructor.
data AthenaDatasetDefinition = AthenaDatasetDefinition'
  { _addOutputCompression ::
      !( Maybe
           AthenaResultCompressionType
       ),
    _addKMSKeyId ::
      !(Maybe Text),
    _addWorkGroup ::
      !(Maybe Text),
    _addCatalog :: !Text,
    _addDatabase :: !Text,
    _addQueryString ::
      !Text,
    _addOutputS3URI ::
      !Text,
    _addOutputFormat ::
      !AthenaResultFormat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AthenaDatasetDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addOutputCompression' - Undocumented member.
--
-- * 'addKMSKeyId' - The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data generated from an Athena query execution.
--
-- * 'addWorkGroup' - Undocumented member.
--
-- * 'addCatalog' - Undocumented member.
--
-- * 'addDatabase' - Undocumented member.
--
-- * 'addQueryString' - Undocumented member.
--
-- * 'addOutputS3URI' - The location in Amazon S3 where Athena query results are stored.
--
-- * 'addOutputFormat' - Undocumented member.
athenaDatasetDefinition ::
  -- | 'addCatalog'
  Text ->
  -- | 'addDatabase'
  Text ->
  -- | 'addQueryString'
  Text ->
  -- | 'addOutputS3URI'
  Text ->
  -- | 'addOutputFormat'
  AthenaResultFormat ->
  AthenaDatasetDefinition
athenaDatasetDefinition
  pCatalog_
  pDatabase_
  pQueryString_
  pOutputS3URI_
  pOutputFormat_ =
    AthenaDatasetDefinition'
      { _addOutputCompression =
          Nothing,
        _addKMSKeyId = Nothing,
        _addWorkGroup = Nothing,
        _addCatalog = pCatalog_,
        _addDatabase = pDatabase_,
        _addQueryString = pQueryString_,
        _addOutputS3URI = pOutputS3URI_,
        _addOutputFormat = pOutputFormat_
      }

-- | Undocumented member.
addOutputCompression :: Lens' AthenaDatasetDefinition (Maybe AthenaResultCompressionType)
addOutputCompression = lens _addOutputCompression (\s a -> s {_addOutputCompression = a})

-- | The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data generated from an Athena query execution.
addKMSKeyId :: Lens' AthenaDatasetDefinition (Maybe Text)
addKMSKeyId = lens _addKMSKeyId (\s a -> s {_addKMSKeyId = a})

-- | Undocumented member.
addWorkGroup :: Lens' AthenaDatasetDefinition (Maybe Text)
addWorkGroup = lens _addWorkGroup (\s a -> s {_addWorkGroup = a})

-- | Undocumented member.
addCatalog :: Lens' AthenaDatasetDefinition Text
addCatalog = lens _addCatalog (\s a -> s {_addCatalog = a})

-- | Undocumented member.
addDatabase :: Lens' AthenaDatasetDefinition Text
addDatabase = lens _addDatabase (\s a -> s {_addDatabase = a})

-- | Undocumented member.
addQueryString :: Lens' AthenaDatasetDefinition Text
addQueryString = lens _addQueryString (\s a -> s {_addQueryString = a})

-- | The location in Amazon S3 where Athena query results are stored.
addOutputS3URI :: Lens' AthenaDatasetDefinition Text
addOutputS3URI = lens _addOutputS3URI (\s a -> s {_addOutputS3URI = a})

-- | Undocumented member.
addOutputFormat :: Lens' AthenaDatasetDefinition AthenaResultFormat
addOutputFormat = lens _addOutputFormat (\s a -> s {_addOutputFormat = a})

instance FromJSON AthenaDatasetDefinition where
  parseJSON =
    withObject
      "AthenaDatasetDefinition"
      ( \x ->
          AthenaDatasetDefinition'
            <$> (x .:? "OutputCompression")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "WorkGroup")
            <*> (x .: "Catalog")
            <*> (x .: "Database")
            <*> (x .: "QueryString")
            <*> (x .: "OutputS3Uri")
            <*> (x .: "OutputFormat")
      )

instance Hashable AthenaDatasetDefinition

instance NFData AthenaDatasetDefinition

instance ToJSON AthenaDatasetDefinition where
  toJSON AthenaDatasetDefinition' {..} =
    object
      ( catMaybes
          [ ("OutputCompression" .=) <$> _addOutputCompression,
            ("KmsKeyId" .=) <$> _addKMSKeyId,
            ("WorkGroup" .=) <$> _addWorkGroup,
            Just ("Catalog" .= _addCatalog),
            Just ("Database" .= _addDatabase),
            Just ("QueryString" .= _addQueryString),
            Just ("OutputS3Uri" .= _addOutputS3URI),
            Just ("OutputFormat" .= _addOutputFormat)
          ]
      )
