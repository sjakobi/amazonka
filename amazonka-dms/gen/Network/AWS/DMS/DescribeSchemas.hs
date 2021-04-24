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
-- Module      : Network.AWS.DMS.DescribeSchemas
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the schema for the specified endpoint.
--
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeSchemas
  ( -- * Creating a Request
    describeSchemas,
    DescribeSchemas,

    -- * Request Lenses
    dsMarker,
    dsMaxRecords,
    dsEndpointARN,

    -- * Destructuring the Response
    describeSchemasResponse,
    DescribeSchemasResponse,

    -- * Response Lenses
    dsrrsSchemas,
    dsrrsMarker,
    dsrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeSchemas' smart constructor.
data DescribeSchemas = DescribeSchemas'
  { _dsMarker ::
      !(Maybe Text),
    _dsMaxRecords :: !(Maybe Int),
    _dsEndpointARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSchemas' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
--
-- * 'dsEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
describeSchemas ::
  -- | 'dsEndpointARN'
  Text ->
  DescribeSchemas
describeSchemas pEndpointARN_ =
  DescribeSchemas'
    { _dsMarker = Nothing,
      _dsMaxRecords = Nothing,
      _dsEndpointARN = pEndpointARN_
    }

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dsMarker :: Lens' DescribeSchemas (Maybe Text)
dsMarker = lens _dsMarker (\s a -> s {_dsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
dsMaxRecords :: Lens' DescribeSchemas (Maybe Int)
dsMaxRecords = lens _dsMaxRecords (\s a -> s {_dsMaxRecords = a})

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
dsEndpointARN :: Lens' DescribeSchemas Text
dsEndpointARN = lens _dsEndpointARN (\s a -> s {_dsEndpointARN = a})

instance AWSPager DescribeSchemas where
  page rq rs
    | stop (rs ^. dsrrsMarker) = Nothing
    | stop (rs ^. dsrrsSchemas) = Nothing
    | otherwise =
      Just $ rq & dsMarker .~ rs ^. dsrrsMarker

instance AWSRequest DescribeSchemas where
  type Rs DescribeSchemas = DescribeSchemasResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeSchemasResponse'
            <$> (x .?> "Schemas" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSchemas

instance NFData DescribeSchemas

instance ToHeaders DescribeSchemas where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDMSv20160101.DescribeSchemas" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSchemas where
  toJSON DescribeSchemas' {..} =
    object
      ( catMaybes
          [ ("Marker" .=) <$> _dsMarker,
            ("MaxRecords" .=) <$> _dsMaxRecords,
            Just ("EndpointArn" .= _dsEndpointARN)
          ]
      )

instance ToPath DescribeSchemas where
  toPath = const "/"

instance ToQuery DescribeSchemas where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeSchemasResponse' smart constructor.
data DescribeSchemasResponse = DescribeSchemasResponse'
  { _dsrrsSchemas ::
      !(Maybe [Text]),
    _dsrrsMarker ::
      !(Maybe Text),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSchemasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsSchemas' - The described schema.
--
-- * 'dsrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeSchemasResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeSchemasResponse
describeSchemasResponse pResponseStatus_ =
  DescribeSchemasResponse'
    { _dsrrsSchemas = Nothing,
      _dsrrsMarker = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The described schema.
dsrrsSchemas :: Lens' DescribeSchemasResponse [Text]
dsrrsSchemas = lens _dsrrsSchemas (\s a -> s {_dsrrsSchemas = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dsrrsMarker :: Lens' DescribeSchemasResponse (Maybe Text)
dsrrsMarker = lens _dsrrsMarker (\s a -> s {_dsrrsMarker = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeSchemasResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeSchemasResponse
