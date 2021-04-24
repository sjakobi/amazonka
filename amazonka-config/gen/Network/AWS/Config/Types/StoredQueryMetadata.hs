{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.StoredQueryMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.StoredQueryMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns details of a specific query.
--
--
--
-- /See:/ 'storedQueryMetadata' smart constructor.
data StoredQueryMetadata = StoredQueryMetadata'
  { _sqmDescription ::
      !(Maybe Text),
    _sqmQueryId :: !Text,
    _sqmQueryARN :: !Text,
    _sqmQueryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StoredQueryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqmDescription' - A unique description for the query.
--
-- * 'sqmQueryId' - The ID of the query.
--
-- * 'sqmQueryARN' - Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
--
-- * 'sqmQueryName' - The name of the query.
storedQueryMetadata ::
  -- | 'sqmQueryId'
  Text ->
  -- | 'sqmQueryARN'
  Text ->
  -- | 'sqmQueryName'
  Text ->
  StoredQueryMetadata
storedQueryMetadata pQueryId_ pQueryARN_ pQueryName_ =
  StoredQueryMetadata'
    { _sqmDescription = Nothing,
      _sqmQueryId = pQueryId_,
      _sqmQueryARN = pQueryARN_,
      _sqmQueryName = pQueryName_
    }

-- | A unique description for the query.
sqmDescription :: Lens' StoredQueryMetadata (Maybe Text)
sqmDescription = lens _sqmDescription (\s a -> s {_sqmDescription = a})

-- | The ID of the query.
sqmQueryId :: Lens' StoredQueryMetadata Text
sqmQueryId = lens _sqmQueryId (\s a -> s {_sqmQueryId = a})

-- | Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.
sqmQueryARN :: Lens' StoredQueryMetadata Text
sqmQueryARN = lens _sqmQueryARN (\s a -> s {_sqmQueryARN = a})

-- | The name of the query.
sqmQueryName :: Lens' StoredQueryMetadata Text
sqmQueryName = lens _sqmQueryName (\s a -> s {_sqmQueryName = a})

instance FromJSON StoredQueryMetadata where
  parseJSON =
    withObject
      "StoredQueryMetadata"
      ( \x ->
          StoredQueryMetadata'
            <$> (x .:? "Description")
            <*> (x .: "QueryId")
            <*> (x .: "QueryArn")
            <*> (x .: "QueryName")
      )

instance Hashable StoredQueryMetadata

instance NFData StoredQueryMetadata
