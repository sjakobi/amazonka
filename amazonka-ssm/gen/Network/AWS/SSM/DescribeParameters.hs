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
-- Module      : Network.AWS.SSM.DescribeParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a parameter.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeParameters
  ( -- * Creating a Request
    describeParameters,
    DescribeParameters,

    -- * Request Lenses
    dpNextToken,
    dpMaxResults,
    dpParameterFilters,
    dpFilters,

    -- * Destructuring the Response
    describeParametersResponse,
    DescribeParametersResponse,

    -- * Response Lenses
    dprrsNextToken,
    dprrsParameters,
    dprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeParameters' smart constructor.
data DescribeParameters = DescribeParameters'
  { _dpNextToken ::
      !(Maybe Text),
    _dpMaxResults :: !(Maybe Nat),
    _dpParameterFilters ::
      !(Maybe [ParameterStringFilter]),
    _dpFilters ::
      !(Maybe [ParametersFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dpMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dpParameterFilters' - Filters to limit the request results.
--
-- * 'dpFilters' - This data type is deprecated. Instead, use @ParameterFilters@ .
describeParameters ::
  DescribeParameters
describeParameters =
  DescribeParameters'
    { _dpNextToken = Nothing,
      _dpMaxResults = Nothing,
      _dpParameterFilters = Nothing,
      _dpFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dpNextToken :: Lens' DescribeParameters (Maybe Text)
dpNextToken = lens _dpNextToken (\s a -> s {_dpNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dpMaxResults :: Lens' DescribeParameters (Maybe Natural)
dpMaxResults = lens _dpMaxResults (\s a -> s {_dpMaxResults = a}) . mapping _Nat

-- | Filters to limit the request results.
dpParameterFilters :: Lens' DescribeParameters [ParameterStringFilter]
dpParameterFilters = lens _dpParameterFilters (\s a -> s {_dpParameterFilters = a}) . _Default . _Coerce

-- | This data type is deprecated. Instead, use @ParameterFilters@ .
dpFilters :: Lens' DescribeParameters [ParametersFilter]
dpFilters = lens _dpFilters (\s a -> s {_dpFilters = a}) . _Default . _Coerce

instance AWSPager DescribeParameters where
  page rq rs
    | stop (rs ^. dprrsNextToken) = Nothing
    | stop (rs ^. dprrsParameters) = Nothing
    | otherwise =
      Just $ rq & dpNextToken .~ rs ^. dprrsNextToken

instance AWSRequest DescribeParameters where
  type
    Rs DescribeParameters =
      DescribeParametersResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeParametersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Parameters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeParameters

instance NFData DescribeParameters

instance ToHeaders DescribeParameters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribeParameters" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeParameters where
  toJSON DescribeParameters' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dpNextToken,
            ("MaxResults" .=) <$> _dpMaxResults,
            ("ParameterFilters" .=) <$> _dpParameterFilters,
            ("Filters" .=) <$> _dpFilters
          ]
      )

instance ToPath DescribeParameters where
  toPath = const "/"

instance ToQuery DescribeParameters where
  toQuery = const mempty

-- | /See:/ 'describeParametersResponse' smart constructor.
data DescribeParametersResponse = DescribeParametersResponse'
  { _dprrsNextToken ::
      !(Maybe Text),
    _dprrsParameters ::
      !( Maybe
           [ParameterMetadata]
       ),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DescribeParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsNextToken' - The token to use when requesting the next set of items.
--
-- * 'dprrsParameters' - Parameters returned by the request.
--
-- * 'dprrsResponseStatus' - -- | The response status code.
describeParametersResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DescribeParametersResponse
describeParametersResponse pResponseStatus_ =
  DescribeParametersResponse'
    { _dprrsNextToken =
        Nothing,
      _dprrsParameters = Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items.
dprrsNextToken :: Lens' DescribeParametersResponse (Maybe Text)
dprrsNextToken = lens _dprrsNextToken (\s a -> s {_dprrsNextToken = a})

-- | Parameters returned by the request.
dprrsParameters :: Lens' DescribeParametersResponse [ParameterMetadata]
dprrsParameters = lens _dprrsParameters (\s a -> s {_dprrsParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DescribeParametersResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DescribeParametersResponse
