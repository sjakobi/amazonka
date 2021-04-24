{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.GetPartitionIndexes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the partition indexes associated with a table.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetPartitionIndexes
  ( -- * Creating a Request
    getPartitionIndexes,
    GetPartitionIndexes,

    -- * Request Lenses
    gpiNextToken,
    gpiCatalogId,
    gpiDatabaseName,
    gpiTableName,

    -- * Destructuring the Response
    getPartitionIndexesResponse,
    GetPartitionIndexesResponse,

    -- * Response Lenses
    gpirrsNextToken,
    gpirrsPartitionIndexDescriptorList,
    gpirrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPartitionIndexes' smart constructor.
data GetPartitionIndexes = GetPartitionIndexes'
  { _gpiNextToken ::
      !(Maybe Text),
    _gpiCatalogId :: !(Maybe Text),
    _gpiDatabaseName :: !Text,
    _gpiTableName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPartitionIndexes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpiNextToken' - A continuation token, included if this is a continuation call.
--
-- * 'gpiCatalogId' - The catalog ID where the table resides.
--
-- * 'gpiDatabaseName' - Specifies the name of a database from which you want to retrieve partition indexes.
--
-- * 'gpiTableName' - Specifies the name of a table for which you want to retrieve the partition indexes.
getPartitionIndexes ::
  -- | 'gpiDatabaseName'
  Text ->
  -- | 'gpiTableName'
  Text ->
  GetPartitionIndexes
getPartitionIndexes pDatabaseName_ pTableName_ =
  GetPartitionIndexes'
    { _gpiNextToken = Nothing,
      _gpiCatalogId = Nothing,
      _gpiDatabaseName = pDatabaseName_,
      _gpiTableName = pTableName_
    }

-- | A continuation token, included if this is a continuation call.
gpiNextToken :: Lens' GetPartitionIndexes (Maybe Text)
gpiNextToken = lens _gpiNextToken (\s a -> s {_gpiNextToken = a})

-- | The catalog ID where the table resides.
gpiCatalogId :: Lens' GetPartitionIndexes (Maybe Text)
gpiCatalogId = lens _gpiCatalogId (\s a -> s {_gpiCatalogId = a})

-- | Specifies the name of a database from which you want to retrieve partition indexes.
gpiDatabaseName :: Lens' GetPartitionIndexes Text
gpiDatabaseName = lens _gpiDatabaseName (\s a -> s {_gpiDatabaseName = a})

-- | Specifies the name of a table for which you want to retrieve the partition indexes.
gpiTableName :: Lens' GetPartitionIndexes Text
gpiTableName = lens _gpiTableName (\s a -> s {_gpiTableName = a})

instance AWSPager GetPartitionIndexes where
  page rq rs
    | stop (rs ^. gpirrsNextToken) = Nothing
    | stop (rs ^. gpirrsPartitionIndexDescriptorList) =
      Nothing
    | otherwise =
      Just $ rq & gpiNextToken .~ rs ^. gpirrsNextToken

instance AWSRequest GetPartitionIndexes where
  type
    Rs GetPartitionIndexes =
      GetPartitionIndexesResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetPartitionIndexesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PartitionIndexDescriptorList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetPartitionIndexes

instance NFData GetPartitionIndexes

instance ToHeaders GetPartitionIndexes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetPartitionIndexes" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPartitionIndexes where
  toJSON GetPartitionIndexes' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gpiNextToken,
            ("CatalogId" .=) <$> _gpiCatalogId,
            Just ("DatabaseName" .= _gpiDatabaseName),
            Just ("TableName" .= _gpiTableName)
          ]
      )

instance ToPath GetPartitionIndexes where
  toPath = const "/"

instance ToQuery GetPartitionIndexes where
  toQuery = const mempty

-- | /See:/ 'getPartitionIndexesResponse' smart constructor.
data GetPartitionIndexesResponse = GetPartitionIndexesResponse'
  { _gpirrsNextToken ::
      !(Maybe Text),
    _gpirrsPartitionIndexDescriptorList ::
      !( Maybe
           [PartitionIndexDescriptor]
       ),
    _gpirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetPartitionIndexesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpirrsNextToken' - A continuation token, present if the current list segment is not the last.
--
-- * 'gpirrsPartitionIndexDescriptorList' - A list of index descriptors.
--
-- * 'gpirrsResponseStatus' - -- | The response status code.
getPartitionIndexesResponse ::
  -- | 'gpirrsResponseStatus'
  Int ->
  GetPartitionIndexesResponse
getPartitionIndexesResponse pResponseStatus_ =
  GetPartitionIndexesResponse'
    { _gpirrsNextToken =
        Nothing,
      _gpirrsPartitionIndexDescriptorList = Nothing,
      _gpirrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, present if the current list segment is not the last.
gpirrsNextToken :: Lens' GetPartitionIndexesResponse (Maybe Text)
gpirrsNextToken = lens _gpirrsNextToken (\s a -> s {_gpirrsNextToken = a})

-- | A list of index descriptors.
gpirrsPartitionIndexDescriptorList :: Lens' GetPartitionIndexesResponse [PartitionIndexDescriptor]
gpirrsPartitionIndexDescriptorList = lens _gpirrsPartitionIndexDescriptorList (\s a -> s {_gpirrsPartitionIndexDescriptorList = a}) . _Default . _Coerce

-- | -- | The response status code.
gpirrsResponseStatus :: Lens' GetPartitionIndexesResponse Int
gpirrsResponseStatus = lens _gpirrsResponseStatus (\s a -> s {_gpirrsResponseStatus = a})

instance NFData GetPartitionIndexesResponse
