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
-- Module      : Network.AWS.ECS.DescribeCapacityProviders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your capacity providers.
module Network.AWS.ECS.DescribeCapacityProviders
  ( -- * Creating a Request
    describeCapacityProviders,
    DescribeCapacityProviders,

    -- * Request Lenses
    dcpNextToken,
    dcpMaxResults,
    dcpInclude,
    dcpCapacityProviders,

    -- * Destructuring the Response
    describeCapacityProvidersResponse,
    DescribeCapacityProvidersResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsFailures,
    desrsCapacityProviders,
    desrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCapacityProviders' smart constructor.
data DescribeCapacityProviders = DescribeCapacityProviders'
  { _dcpNextToken ::
      !(Maybe Text),
    _dcpMaxResults ::
      !(Maybe Int),
    _dcpInclude ::
      !( Maybe
           [CapacityProviderField]
       ),
    _dcpCapacityProviders ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCapacityProviders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpNextToken' - The @nextToken@ value returned from a previous paginated @DescribeCapacityProviders@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
--
-- * 'dcpMaxResults' - The maximum number of account setting results returned by @DescribeCapacityProviders@ in paginated output. When this parameter is used, @DescribeCapacityProviders@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeCapacityProviders@ request with the returned @nextToken@ value. This value can be between 1 and 10. If this parameter is not used, then @DescribeCapacityProviders@ returns up to 10 results and a @nextToken@ value if applicable.
--
-- * 'dcpInclude' - Specifies whether or not you want to see the resource tags for the capacity provider. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
--
-- * 'dcpCapacityProviders' - The short name or full Amazon Resource Name (ARN) of one or more capacity providers. Up to @100@ capacity providers can be described in an action.
describeCapacityProviders ::
  DescribeCapacityProviders
describeCapacityProviders =
  DescribeCapacityProviders'
    { _dcpNextToken = Nothing,
      _dcpMaxResults = Nothing,
      _dcpInclude = Nothing,
      _dcpCapacityProviders = Nothing
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeCapacityProviders@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value.
dcpNextToken :: Lens' DescribeCapacityProviders (Maybe Text)
dcpNextToken = lens _dcpNextToken (\s a -> s {_dcpNextToken = a})

-- | The maximum number of account setting results returned by @DescribeCapacityProviders@ in paginated output. When this parameter is used, @DescribeCapacityProviders@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeCapacityProviders@ request with the returned @nextToken@ value. This value can be between 1 and 10. If this parameter is not used, then @DescribeCapacityProviders@ returns up to 10 results and a @nextToken@ value if applicable.
dcpMaxResults :: Lens' DescribeCapacityProviders (Maybe Int)
dcpMaxResults = lens _dcpMaxResults (\s a -> s {_dcpMaxResults = a})

-- | Specifies whether or not you want to see the resource tags for the capacity provider. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
dcpInclude :: Lens' DescribeCapacityProviders [CapacityProviderField]
dcpInclude = lens _dcpInclude (\s a -> s {_dcpInclude = a}) . _Default . _Coerce

-- | The short name or full Amazon Resource Name (ARN) of one or more capacity providers. Up to @100@ capacity providers can be described in an action.
dcpCapacityProviders :: Lens' DescribeCapacityProviders [Text]
dcpCapacityProviders = lens _dcpCapacityProviders (\s a -> s {_dcpCapacityProviders = a}) . _Default . _Coerce

instance AWSRequest DescribeCapacityProviders where
  type
    Rs DescribeCapacityProviders =
      DescribeCapacityProvidersResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DescribeCapacityProvidersResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "failures" .!@ mempty)
            <*> (x .?> "capacityProviders" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCapacityProviders

instance NFData DescribeCapacityProviders

instance ToHeaders DescribeCapacityProviders where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DescribeCapacityProviders" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCapacityProviders where
  toJSON DescribeCapacityProviders' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _dcpNextToken,
            ("maxResults" .=) <$> _dcpMaxResults,
            ("include" .=) <$> _dcpInclude,
            ("capacityProviders" .=) <$> _dcpCapacityProviders
          ]
      )

instance ToPath DescribeCapacityProviders where
  toPath = const "/"

instance ToQuery DescribeCapacityProviders where
  toQuery = const mempty

-- | /See:/ 'describeCapacityProvidersResponse' smart constructor.
data DescribeCapacityProvidersResponse = DescribeCapacityProvidersResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsFailures ::
      !( Maybe
           [Failure]
       ),
    _desrsCapacityProviders ::
      !( Maybe
           [CapacityProvider]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeCapacityProvidersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The @nextToken@ value to include in a future @DescribeCapacityProviders@ request. When the results of a @DescribeCapacityProviders@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'desrsFailures' - Any failures associated with the call.
--
-- * 'desrsCapacityProviders' - The list of capacity providers.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeCapacityProvidersResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeCapacityProvidersResponse
describeCapacityProvidersResponse pResponseStatus_ =
  DescribeCapacityProvidersResponse'
    { _desrsNextToken =
        Nothing,
      _desrsFailures = Nothing,
      _desrsCapacityProviders = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeCapacityProviders@ request. When the results of a @DescribeCapacityProviders@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
desrsNextToken :: Lens' DescribeCapacityProvidersResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Any failures associated with the call.
desrsFailures :: Lens' DescribeCapacityProvidersResponse [Failure]
desrsFailures = lens _desrsFailures (\s a -> s {_desrsFailures = a}) . _Default . _Coerce

-- | The list of capacity providers.
desrsCapacityProviders :: Lens' DescribeCapacityProvidersResponse [CapacityProvider]
desrsCapacityProviders = lens _desrsCapacityProviders (\s a -> s {_desrsCapacityProviders = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeCapacityProvidersResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeCapacityProvidersResponse
