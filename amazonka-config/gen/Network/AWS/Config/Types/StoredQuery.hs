{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.StoredQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.StoredQuery where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the details of a stored query.
--
--
--
-- /See:/ 'storedQuery' smart constructor.
data StoredQuery = StoredQuery'
  { _sqQueryARN ::
      !(Maybe Text),
    _sqQueryId :: !(Maybe Text),
    _sqDescription :: !(Maybe Text),
    _sqExpression :: !(Maybe Text),
    _sqQueryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StoredQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqQueryARN' - Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
--
-- * 'sqQueryId' - The ID of the query.
--
-- * 'sqDescription' - A unique description for the query.
--
-- * 'sqExpression' - The expression of the query. For example, @SELECT resourceId, resourceType, supplementaryConfiguration.BucketVersioningConfiguration.status WHERE resourceType = 'AWS::S3::Bucket' AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'.@
--
-- * 'sqQueryName' - The name of the query.
storedQuery ::
  -- | 'sqQueryName'
  Text ->
  StoredQuery
storedQuery pQueryName_ =
  StoredQuery'
    { _sqQueryARN = Nothing,
      _sqQueryId = Nothing,
      _sqDescription = Nothing,
      _sqExpression = Nothing,
      _sqQueryName = pQueryName_
    }

-- | Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
sqQueryARN :: Lens' StoredQuery (Maybe Text)
sqQueryARN = lens _sqQueryARN (\s a -> s {_sqQueryARN = a})

-- | The ID of the query.
sqQueryId :: Lens' StoredQuery (Maybe Text)
sqQueryId = lens _sqQueryId (\s a -> s {_sqQueryId = a})

-- | A unique description for the query.
sqDescription :: Lens' StoredQuery (Maybe Text)
sqDescription = lens _sqDescription (\s a -> s {_sqDescription = a})

-- | The expression of the query. For example, @SELECT resourceId, resourceType, supplementaryConfiguration.BucketVersioningConfiguration.status WHERE resourceType = 'AWS::S3::Bucket' AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'.@
sqExpression :: Lens' StoredQuery (Maybe Text)
sqExpression = lens _sqExpression (\s a -> s {_sqExpression = a})

-- | The name of the query.
sqQueryName :: Lens' StoredQuery Text
sqQueryName = lens _sqQueryName (\s a -> s {_sqQueryName = a})

instance FromJSON StoredQuery where
  parseJSON =
    withObject
      "StoredQuery"
      ( \x ->
          StoredQuery'
            <$> (x .:? "QueryArn")
            <*> (x .:? "QueryId")
            <*> (x .:? "Description")
            <*> (x .:? "Expression")
            <*> (x .: "QueryName")
      )

instance Hashable StoredQuery

instance NFData StoredQuery

instance ToJSON StoredQuery where
  toJSON StoredQuery' {..} =
    object
      ( catMaybes
          [ ("QueryArn" .=) <$> _sqQueryARN,
            ("QueryId" .=) <$> _sqQueryId,
            ("Description" .=) <$> _sqDescription,
            ("Expression" .=) <$> _sqExpression,
            Just ("QueryName" .= _sqQueryName)
          ]
      )
