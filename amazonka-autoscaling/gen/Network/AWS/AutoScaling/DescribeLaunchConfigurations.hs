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
-- Module      : Network.AWS.AutoScaling.DescribeLaunchConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more launch configurations.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeLaunchConfigurations
  ( -- * Creating a Request
    describeLaunchConfigurations,
    DescribeLaunchConfigurations,

    -- * Request Lenses
    dlcNextToken,
    dlcLaunchConfigurationNames,
    dlcMaxRecords,

    -- * Destructuring the Response
    describeLaunchConfigurationsResponse,
    DescribeLaunchConfigurationsResponse,

    -- * Response Lenses
    dlcrrsNextToken,
    dlcrrsResponseStatus,
    dlcrrsLaunchConfigurations,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLaunchConfigurations' smart constructor.
data DescribeLaunchConfigurations = DescribeLaunchConfigurations'
  { _dlcNextToken ::
      !(Maybe Text),
    _dlcLaunchConfigurationNames ::
      !( Maybe
           [Text]
       ),
    _dlcMaxRecords ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLaunchConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlcNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dlcLaunchConfigurationNames' - The launch configuration names. If you omit this parameter, all launch configurations are described.
--
-- * 'dlcMaxRecords' - The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
describeLaunchConfigurations ::
  DescribeLaunchConfigurations
describeLaunchConfigurations =
  DescribeLaunchConfigurations'
    { _dlcNextToken =
        Nothing,
      _dlcLaunchConfigurationNames = Nothing,
      _dlcMaxRecords = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dlcNextToken :: Lens' DescribeLaunchConfigurations (Maybe Text)
dlcNextToken = lens _dlcNextToken (\s a -> s {_dlcNextToken = a})

-- | The launch configuration names. If you omit this parameter, all launch configurations are described.
dlcLaunchConfigurationNames :: Lens' DescribeLaunchConfigurations [Text]
dlcLaunchConfigurationNames = lens _dlcLaunchConfigurationNames (\s a -> s {_dlcLaunchConfigurationNames = a}) . _Default . _Coerce

-- | The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
dlcMaxRecords :: Lens' DescribeLaunchConfigurations (Maybe Int)
dlcMaxRecords = lens _dlcMaxRecords (\s a -> s {_dlcMaxRecords = a})

instance AWSPager DescribeLaunchConfigurations where
  page rq rs
    | stop (rs ^. dlcrrsNextToken) = Nothing
    | stop (rs ^. dlcrrsLaunchConfigurations) = Nothing
    | otherwise =
      Just $ rq & dlcNextToken .~ rs ^. dlcrrsNextToken

instance AWSRequest DescribeLaunchConfigurations where
  type
    Rs DescribeLaunchConfigurations =
      DescribeLaunchConfigurationsResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeLaunchConfigurationsResult"
      ( \s h x ->
          DescribeLaunchConfigurationsResponse'
            <$> (x .@? "NextToken")
            <*> (pure (fromEnum s))
            <*> ( x .@? "LaunchConfigurations" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeLaunchConfigurations

instance NFData DescribeLaunchConfigurations

instance ToHeaders DescribeLaunchConfigurations where
  toHeaders = const mempty

instance ToPath DescribeLaunchConfigurations where
  toPath = const "/"

instance ToQuery DescribeLaunchConfigurations where
  toQuery DescribeLaunchConfigurations' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLaunchConfigurations" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dlcNextToken,
        "LaunchConfigurationNames"
          =: toQuery
            ( toQueryList "member"
                <$> _dlcLaunchConfigurationNames
            ),
        "MaxRecords" =: _dlcMaxRecords
      ]

-- | /See:/ 'describeLaunchConfigurationsResponse' smart constructor.
data DescribeLaunchConfigurationsResponse = DescribeLaunchConfigurationsResponse'
  { _dlcrrsNextToken ::
      !( Maybe
           Text
       ),
    _dlcrrsResponseStatus ::
      !Int,
    _dlcrrsLaunchConfigurations ::
      ![LaunchConfiguration]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLaunchConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlcrrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dlcrrsResponseStatus' - -- | The response status code.
--
-- * 'dlcrrsLaunchConfigurations' - The launch configurations.
describeLaunchConfigurationsResponse ::
  -- | 'dlcrrsResponseStatus'
  Int ->
  DescribeLaunchConfigurationsResponse
describeLaunchConfigurationsResponse pResponseStatus_ =
  DescribeLaunchConfigurationsResponse'
    { _dlcrrsNextToken =
        Nothing,
      _dlcrrsResponseStatus =
        pResponseStatus_,
      _dlcrrsLaunchConfigurations = mempty
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dlcrrsNextToken :: Lens' DescribeLaunchConfigurationsResponse (Maybe Text)
dlcrrsNextToken = lens _dlcrrsNextToken (\s a -> s {_dlcrrsNextToken = a})

-- | -- | The response status code.
dlcrrsResponseStatus :: Lens' DescribeLaunchConfigurationsResponse Int
dlcrrsResponseStatus = lens _dlcrrsResponseStatus (\s a -> s {_dlcrrsResponseStatus = a})

-- | The launch configurations.
dlcrrsLaunchConfigurations :: Lens' DescribeLaunchConfigurationsResponse [LaunchConfiguration]
dlcrrsLaunchConfigurations = lens _dlcrrsLaunchConfigurations (\s a -> s {_dlcrrsLaunchConfigurations = a}) . _Coerce

instance NFData DescribeLaunchConfigurationsResponse
