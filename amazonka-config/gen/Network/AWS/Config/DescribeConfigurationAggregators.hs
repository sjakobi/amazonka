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
-- Module      : Network.AWS.Config.DescribeConfigurationAggregators
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeConfigurationAggregators
  ( -- * Creating a Request
    describeConfigurationAggregators,
    DescribeConfigurationAggregators,

    -- * Request Lenses
    dcaNextToken,
    dcaConfigurationAggregatorNames,
    dcaLimit,

    -- * Destructuring the Response
    describeConfigurationAggregatorsResponse,
    DescribeConfigurationAggregatorsResponse,

    -- * Response Lenses
    dcarrsNextToken,
    dcarrsConfigurationAggregators,
    dcarrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConfigurationAggregators' smart constructor.
data DescribeConfigurationAggregators = DescribeConfigurationAggregators'
  { _dcaNextToken ::
      !( Maybe
           Text
       ),
    _dcaConfigurationAggregatorNames ::
      !( Maybe
           [Text]
       ),
    _dcaLimit ::
      !( Maybe
           Nat
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConfigurationAggregators' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcaConfigurationAggregatorNames' - The name of the configuration aggregators.
--
-- * 'dcaLimit' - The maximum number of configuration aggregators returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
describeConfigurationAggregators ::
  DescribeConfigurationAggregators
describeConfigurationAggregators =
  DescribeConfigurationAggregators'
    { _dcaNextToken =
        Nothing,
      _dcaConfigurationAggregatorNames =
        Nothing,
      _dcaLimit = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcaNextToken :: Lens' DescribeConfigurationAggregators (Maybe Text)
dcaNextToken = lens _dcaNextToken (\s a -> s {_dcaNextToken = a})

-- | The name of the configuration aggregators.
dcaConfigurationAggregatorNames :: Lens' DescribeConfigurationAggregators [Text]
dcaConfigurationAggregatorNames = lens _dcaConfigurationAggregatorNames (\s a -> s {_dcaConfigurationAggregatorNames = a}) . _Default . _Coerce

-- | The maximum number of configuration aggregators returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
dcaLimit :: Lens' DescribeConfigurationAggregators (Maybe Natural)
dcaLimit = lens _dcaLimit (\s a -> s {_dcaLimit = a}) . mapping _Nat

instance AWSPager DescribeConfigurationAggregators where
  page rq rs
    | stop (rs ^. dcarrsNextToken) = Nothing
    | stop (rs ^. dcarrsConfigurationAggregators) =
      Nothing
    | otherwise =
      Just $ rq & dcaNextToken .~ rs ^. dcarrsNextToken

instance AWSRequest DescribeConfigurationAggregators where
  type
    Rs DescribeConfigurationAggregators =
      DescribeConfigurationAggregatorsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeConfigurationAggregatorsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ConfigurationAggregators" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConfigurationAggregators

instance NFData DescribeConfigurationAggregators

instance ToHeaders DescribeConfigurationAggregators where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeConfigurationAggregators" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConfigurationAggregators where
  toJSON DescribeConfigurationAggregators' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcaNextToken,
            ("ConfigurationAggregatorNames" .=)
              <$> _dcaConfigurationAggregatorNames,
            ("Limit" .=) <$> _dcaLimit
          ]
      )

instance ToPath DescribeConfigurationAggregators where
  toPath = const "/"

instance ToQuery DescribeConfigurationAggregators where
  toQuery = const mempty

-- | /See:/ 'describeConfigurationAggregatorsResponse' smart constructor.
data DescribeConfigurationAggregatorsResponse = DescribeConfigurationAggregatorsResponse'
  { _dcarrsNextToken ::
      !( Maybe
           Text
       ),
    _dcarrsConfigurationAggregators ::
      !( Maybe
           [ConfigurationAggregator]
       ),
    _dcarrsResponseStatus ::
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

-- | Creates a value of 'DescribeConfigurationAggregatorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcarrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcarrsConfigurationAggregators' - Returns a ConfigurationAggregators object.
--
-- * 'dcarrsResponseStatus' - -- | The response status code.
describeConfigurationAggregatorsResponse ::
  -- | 'dcarrsResponseStatus'
  Int ->
  DescribeConfigurationAggregatorsResponse
describeConfigurationAggregatorsResponse
  pResponseStatus_ =
    DescribeConfigurationAggregatorsResponse'
      { _dcarrsNextToken =
          Nothing,
        _dcarrsConfigurationAggregators =
          Nothing,
        _dcarrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcarrsNextToken :: Lens' DescribeConfigurationAggregatorsResponse (Maybe Text)
dcarrsNextToken = lens _dcarrsNextToken (\s a -> s {_dcarrsNextToken = a})

-- | Returns a ConfigurationAggregators object.
dcarrsConfigurationAggregators :: Lens' DescribeConfigurationAggregatorsResponse [ConfigurationAggregator]
dcarrsConfigurationAggregators = lens _dcarrsConfigurationAggregators (\s a -> s {_dcarrsConfigurationAggregators = a}) . _Default . _Coerce

-- | -- | The response status code.
dcarrsResponseStatus :: Lens' DescribeConfigurationAggregatorsResponse Int
dcarrsResponseStatus = lens _dcarrsResponseStatus (\s a -> s {_dcarrsResponseStatus = a})

instance
  NFData
    DescribeConfigurationAggregatorsResponse
