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
-- Module      : Network.AWS.Config.DescribeRetentionConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeRetentionConfigurations
  ( -- * Creating a Request
    describeRetentionConfigurations,
    DescribeRetentionConfigurations,

    -- * Request Lenses
    drcNextToken,
    drcRetentionConfigurationNames,

    -- * Destructuring the Response
    describeRetentionConfigurationsResponse,
    DescribeRetentionConfigurationsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsRetentionConfigurations,
    desrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRetentionConfigurations' smart constructor.
data DescribeRetentionConfigurations = DescribeRetentionConfigurations'
  { _drcNextToken ::
      !( Maybe
           Text
       ),
    _drcRetentionConfigurationNames ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'DescribeRetentionConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'drcRetentionConfigurationNames' - A list of names of retention configurations for which you want details. If you do not specify a name, AWS Config returns details for all the retention configurations for that account.
describeRetentionConfigurations ::
  DescribeRetentionConfigurations
describeRetentionConfigurations =
  DescribeRetentionConfigurations'
    { _drcNextToken =
        Nothing,
      _drcRetentionConfigurationNames = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
drcNextToken :: Lens' DescribeRetentionConfigurations (Maybe Text)
drcNextToken = lens _drcNextToken (\s a -> s {_drcNextToken = a})

-- | A list of names of retention configurations for which you want details. If you do not specify a name, AWS Config returns details for all the retention configurations for that account.
drcRetentionConfigurationNames :: Lens' DescribeRetentionConfigurations [Text]
drcRetentionConfigurationNames = lens _drcRetentionConfigurationNames (\s a -> s {_drcRetentionConfigurationNames = a}) . _Default . _Coerce

instance AWSPager DescribeRetentionConfigurations where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsRetentionConfigurations) = Nothing
    | otherwise =
      Just $ rq & drcNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeRetentionConfigurations where
  type
    Rs DescribeRetentionConfigurations =
      DescribeRetentionConfigurationsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeRetentionConfigurationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "RetentionConfigurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRetentionConfigurations

instance NFData DescribeRetentionConfigurations

instance ToHeaders DescribeRetentionConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeRetentionConfigurations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRetentionConfigurations where
  toJSON DescribeRetentionConfigurations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _drcNextToken,
            ("RetentionConfigurationNames" .=)
              <$> _drcRetentionConfigurationNames
          ]
      )

instance ToPath DescribeRetentionConfigurations where
  toPath = const "/"

instance ToQuery DescribeRetentionConfigurations where
  toQuery = const mempty

-- | /See:/ 'describeRetentionConfigurationsResponse' smart constructor.
data DescribeRetentionConfigurationsResponse = DescribeRetentionConfigurationsResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsRetentionConfigurations ::
      !( Maybe
           [RetentionConfiguration]
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

-- | Creates a value of 'DescribeRetentionConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'desrsRetentionConfigurations' - Returns a retention configuration object.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeRetentionConfigurationsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeRetentionConfigurationsResponse
describeRetentionConfigurationsResponse
  pResponseStatus_ =
    DescribeRetentionConfigurationsResponse'
      { _desrsNextToken =
          Nothing,
        _desrsRetentionConfigurations =
          Nothing,
        _desrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
desrsNextToken :: Lens' DescribeRetentionConfigurationsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Returns a retention configuration object.
desrsRetentionConfigurations :: Lens' DescribeRetentionConfigurationsResponse [RetentionConfiguration]
desrsRetentionConfigurations = lens _desrsRetentionConfigurations (\s a -> s {_desrsRetentionConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeRetentionConfigurationsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance
  NFData
    DescribeRetentionConfigurationsResponse
