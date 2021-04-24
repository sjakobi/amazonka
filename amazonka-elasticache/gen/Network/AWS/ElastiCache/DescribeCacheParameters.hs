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
-- Module      : Network.AWS.ElastiCache.DescribeCacheParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the detailed parameter list for a particular cache parameter group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeCacheParameters
  ( -- * Creating a Request
    describeCacheParameters,
    DescribeCacheParameters,

    -- * Request Lenses
    dcpSource,
    dcpMarker,
    dcpMaxRecords,
    dcpCacheParameterGroupName,

    -- * Destructuring the Response
    describeCacheParametersResponse,
    DescribeCacheParametersResponse,

    -- * Response Lenses
    dcprrsCacheNodeTypeSpecificParameters,
    dcprrsParameters,
    dcprrsMarker,
    dcprrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DescribeCacheParameters@ operation.
--
--
--
-- /See:/ 'describeCacheParameters' smart constructor.
data DescribeCacheParameters = DescribeCacheParameters'
  { _dcpSource ::
      !(Maybe Text),
    _dcpMarker ::
      !(Maybe Text),
    _dcpMaxRecords ::
      !(Maybe Int),
    _dcpCacheParameterGroupName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCacheParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpSource' - The parameter types to return. Valid values: @user@ | @system@ | @engine-default@
--
-- * 'dcpMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dcpMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
--
-- * 'dcpCacheParameterGroupName' - The name of a specific cache parameter group to return details for.
describeCacheParameters ::
  -- | 'dcpCacheParameterGroupName'
  Text ->
  DescribeCacheParameters
describeCacheParameters pCacheParameterGroupName_ =
  DescribeCacheParameters'
    { _dcpSource = Nothing,
      _dcpMarker = Nothing,
      _dcpMaxRecords = Nothing,
      _dcpCacheParameterGroupName =
        pCacheParameterGroupName_
    }

-- | The parameter types to return. Valid values: @user@ | @system@ | @engine-default@
dcpSource :: Lens' DescribeCacheParameters (Maybe Text)
dcpSource = lens _dcpSource (\s a -> s {_dcpSource = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dcpMarker :: Lens' DescribeCacheParameters (Maybe Text)
dcpMarker = lens _dcpMarker (\s a -> s {_dcpMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: minimum 20; maximum 100.
dcpMaxRecords :: Lens' DescribeCacheParameters (Maybe Int)
dcpMaxRecords = lens _dcpMaxRecords (\s a -> s {_dcpMaxRecords = a})

-- | The name of a specific cache parameter group to return details for.
dcpCacheParameterGroupName :: Lens' DescribeCacheParameters Text
dcpCacheParameterGroupName = lens _dcpCacheParameterGroupName (\s a -> s {_dcpCacheParameterGroupName = a})

instance AWSPager DescribeCacheParameters where
  page rq rs
    | stop (rs ^. dcprrsMarker) = Nothing
    | stop (rs ^. dcprrsParameters) = Nothing
    | otherwise =
      Just $ rq & dcpMarker .~ rs ^. dcprrsMarker

instance AWSRequest DescribeCacheParameters where
  type
    Rs DescribeCacheParameters =
      DescribeCacheParametersResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeCacheParametersResult"
      ( \s h x ->
          DescribeCacheParametersResponse'
            <$> ( x .@? "CacheNodeTypeSpecificParameters" .!@ mempty
                    >>= may (parseXMLList "CacheNodeTypeSpecificParameter")
                )
            <*> ( x .@? "Parameters" .!@ mempty
                    >>= may (parseXMLList "Parameter")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCacheParameters

instance NFData DescribeCacheParameters

instance ToHeaders DescribeCacheParameters where
  toHeaders = const mempty

instance ToPath DescribeCacheParameters where
  toPath = const "/"

instance ToQuery DescribeCacheParameters where
  toQuery DescribeCacheParameters' {..} =
    mconcat
      [ "Action"
          =: ("DescribeCacheParameters" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "Source" =: _dcpSource,
        "Marker" =: _dcpMarker,
        "MaxRecords" =: _dcpMaxRecords,
        "CacheParameterGroupName"
          =: _dcpCacheParameterGroupName
      ]

-- | Represents the output of a @DescribeCacheParameters@ operation.
--
--
--
-- /See:/ 'describeCacheParametersResponse' smart constructor.
data DescribeCacheParametersResponse = DescribeCacheParametersResponse'
  { _dcprrsCacheNodeTypeSpecificParameters ::
      !( Maybe
           [CacheNodeTypeSpecificParameter]
       ),
    _dcprrsParameters ::
      !( Maybe
           [Parameter]
       ),
    _dcprrsMarker ::
      !( Maybe
           Text
       ),
    _dcprrsResponseStatus ::
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

-- | Creates a value of 'DescribeCacheParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprrsCacheNodeTypeSpecificParameters' - A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.
--
-- * 'dcprrsParameters' - A list of 'Parameter' instances.
--
-- * 'dcprrsMarker' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'dcprrsResponseStatus' - -- | The response status code.
describeCacheParametersResponse ::
  -- | 'dcprrsResponseStatus'
  Int ->
  DescribeCacheParametersResponse
describeCacheParametersResponse pResponseStatus_ =
  DescribeCacheParametersResponse'
    { _dcprrsCacheNodeTypeSpecificParameters =
        Nothing,
      _dcprrsParameters = Nothing,
      _dcprrsMarker = Nothing,
      _dcprrsResponseStatus = pResponseStatus_
    }

-- | A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.
dcprrsCacheNodeTypeSpecificParameters :: Lens' DescribeCacheParametersResponse [CacheNodeTypeSpecificParameter]
dcprrsCacheNodeTypeSpecificParameters = lens _dcprrsCacheNodeTypeSpecificParameters (\s a -> s {_dcprrsCacheNodeTypeSpecificParameters = a}) . _Default . _Coerce

-- | A list of 'Parameter' instances.
dcprrsParameters :: Lens' DescribeCacheParametersResponse [Parameter]
dcprrsParameters = lens _dcprrsParameters (\s a -> s {_dcprrsParameters = a}) . _Default . _Coerce

-- | Provides an identifier to allow retrieval of paginated results.
dcprrsMarker :: Lens' DescribeCacheParametersResponse (Maybe Text)
dcprrsMarker = lens _dcprrsMarker (\s a -> s {_dcprrsMarker = a})

-- | -- | The response status code.
dcprrsResponseStatus :: Lens' DescribeCacheParametersResponse Int
dcprrsResponseStatus = lens _dcprrsResponseStatus (\s a -> s {_dcprrsResponseStatus = a})

instance NFData DescribeCacheParametersResponse
