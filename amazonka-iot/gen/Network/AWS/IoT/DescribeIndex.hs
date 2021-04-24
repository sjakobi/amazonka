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
-- Module      : Network.AWS.IoT.DescribeIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a search index.
module Network.AWS.IoT.DescribeIndex
  ( -- * Creating a Request
    describeIndex,
    DescribeIndex,

    -- * Request Lenses
    diIndexName,

    -- * Destructuring the Response
    describeIndexResponse,
    DescribeIndexResponse,

    -- * Response Lenses
    dirrsIndexName,
    dirrsSchema,
    dirrsIndexStatus,
    dirrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeIndex' smart constructor.
newtype DescribeIndex = DescribeIndex'
  { _diIndexName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeIndex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diIndexName' - The index name.
describeIndex ::
  -- | 'diIndexName'
  Text ->
  DescribeIndex
describeIndex pIndexName_ =
  DescribeIndex' {_diIndexName = pIndexName_}

-- | The index name.
diIndexName :: Lens' DescribeIndex Text
diIndexName = lens _diIndexName (\s a -> s {_diIndexName = a})

instance AWSRequest DescribeIndex where
  type Rs DescribeIndex = DescribeIndexResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeIndexResponse'
            <$> (x .?> "indexName")
            <*> (x .?> "schema")
            <*> (x .?> "indexStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeIndex

instance NFData DescribeIndex

instance ToHeaders DescribeIndex where
  toHeaders = const mempty

instance ToPath DescribeIndex where
  toPath DescribeIndex' {..} =
    mconcat ["/indices/", toBS _diIndexName]

instance ToQuery DescribeIndex where
  toQuery = const mempty

-- | /See:/ 'describeIndexResponse' smart constructor.
data DescribeIndexResponse = DescribeIndexResponse'
  { _dirrsIndexName ::
      !(Maybe Text),
    _dirrsSchema ::
      !(Maybe Text),
    _dirrsIndexStatus ::
      !(Maybe IndexStatus),
    _dirrsResponseStatus ::
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

-- | Creates a value of 'DescribeIndexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsIndexName' - The index name.
--
-- * 'dirrsSchema' - Contains a value that specifies the type of indexing performed. Valid values are:     * REGISTRY – Your thing index contains only registry data.     * REGISTRY_AND_SHADOW - Your thing index contains registry data and shadow data.     * REGISTRY_AND_CONNECTIVITY_STATUS - Your thing index contains registry data and thing connectivity status data.     * REGISTRY_AND_SHADOW_AND_CONNECTIVITY_STATUS - Your thing index contains registry data, shadow data, and thing connectivity status data.
--
-- * 'dirrsIndexStatus' - The index status.
--
-- * 'dirrsResponseStatus' - -- | The response status code.
describeIndexResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DescribeIndexResponse
describeIndexResponse pResponseStatus_ =
  DescribeIndexResponse'
    { _dirrsIndexName = Nothing,
      _dirrsSchema = Nothing,
      _dirrsIndexStatus = Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | The index name.
dirrsIndexName :: Lens' DescribeIndexResponse (Maybe Text)
dirrsIndexName = lens _dirrsIndexName (\s a -> s {_dirrsIndexName = a})

-- | Contains a value that specifies the type of indexing performed. Valid values are:     * REGISTRY – Your thing index contains only registry data.     * REGISTRY_AND_SHADOW - Your thing index contains registry data and shadow data.     * REGISTRY_AND_CONNECTIVITY_STATUS - Your thing index contains registry data and thing connectivity status data.     * REGISTRY_AND_SHADOW_AND_CONNECTIVITY_STATUS - Your thing index contains registry data, shadow data, and thing connectivity status data.
dirrsSchema :: Lens' DescribeIndexResponse (Maybe Text)
dirrsSchema = lens _dirrsSchema (\s a -> s {_dirrsSchema = a})

-- | The index status.
dirrsIndexStatus :: Lens' DescribeIndexResponse (Maybe IndexStatus)
dirrsIndexStatus = lens _dirrsIndexStatus (\s a -> s {_dirrsIndexStatus = a})

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DescribeIndexResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DescribeIndexResponse
