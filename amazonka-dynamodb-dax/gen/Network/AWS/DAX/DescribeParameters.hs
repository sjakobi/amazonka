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
-- Module      : Network.AWS.DAX.DescribeParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the detailed parameter list for a particular parameter group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DAX.DescribeParameters
  ( -- * Creating a Request
    describeParameters,
    DescribeParameters,

    -- * Request Lenses
    dpNextToken,
    dpMaxResults,
    dpSource,
    dpParameterGroupName,

    -- * Destructuring the Response
    describeParametersResponse,
    DescribeParametersResponse,

    -- * Response Lenses
    dprrsNextToken,
    dprrsParameters,
    dprrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeParameters' smart constructor.
data DescribeParameters = DescribeParameters'
  { _dpNextToken ::
      !(Maybe Text),
    _dpMaxResults :: !(Maybe Int),
    _dpSource :: !(Maybe Text),
    _dpParameterGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'dpMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
--
-- * 'dpSource' - How the parameter is defined. For example, @system@ denotes a system-defined parameter.
--
-- * 'dpParameterGroupName' - The name of the parameter group.
describeParameters ::
  -- | 'dpParameterGroupName'
  Text ->
  DescribeParameters
describeParameters pParameterGroupName_ =
  DescribeParameters'
    { _dpNextToken = Nothing,
      _dpMaxResults = Nothing,
      _dpSource = Nothing,
      _dpParameterGroupName = pParameterGroupName_
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
dpNextToken :: Lens' DescribeParameters (Maybe Text)
dpNextToken = lens _dpNextToken (\s a -> s {_dpNextToken = a})

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. The value for @MaxResults@ must be between 20 and 100.
dpMaxResults :: Lens' DescribeParameters (Maybe Int)
dpMaxResults = lens _dpMaxResults (\s a -> s {_dpMaxResults = a})

-- | How the parameter is defined. For example, @system@ denotes a system-defined parameter.
dpSource :: Lens' DescribeParameters (Maybe Text)
dpSource = lens _dpSource (\s a -> s {_dpSource = a})

-- | The name of the parameter group.
dpParameterGroupName :: Lens' DescribeParameters Text
dpParameterGroupName = lens _dpParameterGroupName (\s a -> s {_dpParameterGroupName = a})

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
  request = postJSON dax
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
              =# ("AmazonDAXV3.DescribeParameters" :: ByteString),
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
            ("Source" .=) <$> _dpSource,
            Just
              ("ParameterGroupName" .= _dpParameterGroupName)
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
           [Parameter]
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
-- * 'dprrsNextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'dprrsParameters' - A list of parameters within a parameter group. Each element in the list represents one parameter.
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

-- | Provides an identifier to allow retrieval of paginated results.
dprrsNextToken :: Lens' DescribeParametersResponse (Maybe Text)
dprrsNextToken = lens _dprrsNextToken (\s a -> s {_dprrsNextToken = a})

-- | A list of parameters within a parameter group. Each element in the list represents one parameter.
dprrsParameters :: Lens' DescribeParametersResponse [Parameter]
dprrsParameters = lens _dprrsParameters (\s a -> s {_dprrsParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DescribeParametersResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DescribeParametersResponse
