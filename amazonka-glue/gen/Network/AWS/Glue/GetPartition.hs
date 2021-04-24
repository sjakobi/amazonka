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
-- Module      : Network.AWS.Glue.GetPartition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a specified partition.
module Network.AWS.Glue.GetPartition
  ( -- * Creating a Request
    getPartition,
    GetPartition,

    -- * Request Lenses
    gCatalogId,
    gDatabaseName,
    gTableName,
    gPartitionValues,

    -- * Destructuring the Response
    getPartitionResponse,
    GetPartitionResponse,

    -- * Response Lenses
    gprrsPartition,
    gprrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPartition' smart constructor.
data GetPartition = GetPartition'
  { _gCatalogId ::
      !(Maybe Text),
    _gDatabaseName :: !Text,
    _gTableName :: !Text,
    _gPartitionValues :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPartition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gCatalogId' - The ID of the Data Catalog where the partition in question resides. If none is provided, the AWS account ID is used by default.
--
-- * 'gDatabaseName' - The name of the catalog database where the partition resides.
--
-- * 'gTableName' - The name of the partition's table.
--
-- * 'gPartitionValues' - The values that define the partition.
getPartition ::
  -- | 'gDatabaseName'
  Text ->
  -- | 'gTableName'
  Text ->
  GetPartition
getPartition pDatabaseName_ pTableName_ =
  GetPartition'
    { _gCatalogId = Nothing,
      _gDatabaseName = pDatabaseName_,
      _gTableName = pTableName_,
      _gPartitionValues = mempty
    }

-- | The ID of the Data Catalog where the partition in question resides. If none is provided, the AWS account ID is used by default.
gCatalogId :: Lens' GetPartition (Maybe Text)
gCatalogId = lens _gCatalogId (\s a -> s {_gCatalogId = a})

-- | The name of the catalog database where the partition resides.
gDatabaseName :: Lens' GetPartition Text
gDatabaseName = lens _gDatabaseName (\s a -> s {_gDatabaseName = a})

-- | The name of the partition's table.
gTableName :: Lens' GetPartition Text
gTableName = lens _gTableName (\s a -> s {_gTableName = a})

-- | The values that define the partition.
gPartitionValues :: Lens' GetPartition [Text]
gPartitionValues = lens _gPartitionValues (\s a -> s {_gPartitionValues = a}) . _Coerce

instance AWSRequest GetPartition where
  type Rs GetPartition = GetPartitionResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetPartitionResponse'
            <$> (x .?> "Partition") <*> (pure (fromEnum s))
      )

instance Hashable GetPartition

instance NFData GetPartition

instance ToHeaders GetPartition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetPartition" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPartition where
  toJSON GetPartition' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _gCatalogId,
            Just ("DatabaseName" .= _gDatabaseName),
            Just ("TableName" .= _gTableName),
            Just ("PartitionValues" .= _gPartitionValues)
          ]
      )

instance ToPath GetPartition where
  toPath = const "/"

instance ToQuery GetPartition where
  toQuery = const mempty

-- | /See:/ 'getPartitionResponse' smart constructor.
data GetPartitionResponse = GetPartitionResponse'
  { _gprrsPartition ::
      !(Maybe Partition),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPartitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsPartition' - The requested information, in the form of a @Partition@ object.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getPartitionResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetPartitionResponse
getPartitionResponse pResponseStatus_ =
  GetPartitionResponse'
    { _gprrsPartition = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | The requested information, in the form of a @Partition@ object.
gprrsPartition :: Lens' GetPartitionResponse (Maybe Partition)
gprrsPartition = lens _gprrsPartition (\s a -> s {_gprrsPartition = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetPartitionResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetPartitionResponse
