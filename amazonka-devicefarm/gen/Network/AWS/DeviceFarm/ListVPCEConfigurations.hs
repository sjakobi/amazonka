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
-- Module      : Network.AWS.DeviceFarm.ListVPCEConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListVPCEConfigurations
  ( -- * Creating a Request
    listVPCEConfigurations,
    ListVPCEConfigurations,

    -- * Request Lenses
    lvecNextToken,
    lvecMaxResults,

    -- * Destructuring the Response
    listVPCEConfigurationsResponse,
    ListVPCEConfigurationsResponse,

    -- * Response Lenses
    lvecrrsNextToken,
    lvecrrsVpceConfigurations,
    lvecrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listVPCEConfigurations' smart constructor.
data ListVPCEConfigurations = ListVPCEConfigurations'
  { _lvecNextToken ::
      !(Maybe Text),
    _lvecMaxResults ::
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

-- | Creates a value of 'ListVPCEConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvecNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lvecMaxResults' - An integer that specifies the maximum number of items you want to return in the API response.
listVPCEConfigurations ::
  ListVPCEConfigurations
listVPCEConfigurations =
  ListVPCEConfigurations'
    { _lvecNextToken = Nothing,
      _lvecMaxResults = Nothing
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lvecNextToken :: Lens' ListVPCEConfigurations (Maybe Text)
lvecNextToken = lens _lvecNextToken (\s a -> s {_lvecNextToken = a})

-- | An integer that specifies the maximum number of items you want to return in the API response.
lvecMaxResults :: Lens' ListVPCEConfigurations (Maybe Int)
lvecMaxResults = lens _lvecMaxResults (\s a -> s {_lvecMaxResults = a})

instance AWSPager ListVPCEConfigurations where
  page rq rs
    | stop (rs ^. lvecrrsNextToken) = Nothing
    | stop (rs ^. lvecrrsVpceConfigurations) = Nothing
    | otherwise =
      Just $ rq & lvecNextToken .~ rs ^. lvecrrsNextToken

instance AWSRequest ListVPCEConfigurations where
  type
    Rs ListVPCEConfigurations =
      ListVPCEConfigurationsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListVPCEConfigurationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "vpceConfigurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListVPCEConfigurations

instance NFData ListVPCEConfigurations

instance ToHeaders ListVPCEConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListVPCEConfigurations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListVPCEConfigurations where
  toJSON ListVPCEConfigurations' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lvecNextToken,
            ("maxResults" .=) <$> _lvecMaxResults
          ]
      )

instance ToPath ListVPCEConfigurations where
  toPath = const "/"

instance ToQuery ListVPCEConfigurations where
  toQuery = const mempty

-- | /See:/ 'listVPCEConfigurationsResponse' smart constructor.
data ListVPCEConfigurationsResponse = ListVPCEConfigurationsResponse'
  { _lvecrrsNextToken ::
      !( Maybe
           Text
       ),
    _lvecrrsVpceConfigurations ::
      !( Maybe
           [VPCEConfiguration]
       ),
    _lvecrrsResponseStatus ::
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

-- | Creates a value of 'ListVPCEConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvecrrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lvecrrsVpceConfigurations' - An array of @VPCEConfiguration@ objects that contain information about your VPC endpoint configuration.
--
-- * 'lvecrrsResponseStatus' - -- | The response status code.
listVPCEConfigurationsResponse ::
  -- | 'lvecrrsResponseStatus'
  Int ->
  ListVPCEConfigurationsResponse
listVPCEConfigurationsResponse pResponseStatus_ =
  ListVPCEConfigurationsResponse'
    { _lvecrrsNextToken =
        Nothing,
      _lvecrrsVpceConfigurations = Nothing,
      _lvecrrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lvecrrsNextToken :: Lens' ListVPCEConfigurationsResponse (Maybe Text)
lvecrrsNextToken = lens _lvecrrsNextToken (\s a -> s {_lvecrrsNextToken = a})

-- | An array of @VPCEConfiguration@ objects that contain information about your VPC endpoint configuration.
lvecrrsVpceConfigurations :: Lens' ListVPCEConfigurationsResponse [VPCEConfiguration]
lvecrrsVpceConfigurations = lens _lvecrrsVpceConfigurations (\s a -> s {_lvecrrsVpceConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
lvecrrsResponseStatus :: Lens' ListVPCEConfigurationsResponse Int
lvecrrsResponseStatus = lens _lvecrrsResponseStatus (\s a -> s {_lvecrrsResponseStatus = a})

instance NFData ListVPCEConfigurationsResponse
