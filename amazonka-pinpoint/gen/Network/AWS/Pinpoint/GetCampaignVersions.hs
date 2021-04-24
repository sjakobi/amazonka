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
-- Module      : Network.AWS.Pinpoint.GetCampaignVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status, configuration, and other settings for all versions of a campaign.
module Network.AWS.Pinpoint.GetCampaignVersions
  ( -- * Creating a Request
    getCampaignVersions,
    GetCampaignVersions,

    -- * Request Lenses
    gcvPageSize,
    gcvToken,
    gcvApplicationId,
    gcvCampaignId,

    -- * Destructuring the Response
    getCampaignVersionsResponse,
    GetCampaignVersionsResponse,

    -- * Response Lenses
    gcvrcrsResponseStatus,
    gcvrcrsCampaignsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCampaignVersions' smart constructor.
data GetCampaignVersions = GetCampaignVersions'
  { _gcvPageSize ::
      !(Maybe Text),
    _gcvToken :: !(Maybe Text),
    _gcvApplicationId :: !Text,
    _gcvCampaignId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCampaignVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gcvToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gcvApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gcvCampaignId' - The unique identifier for the campaign.
getCampaignVersions ::
  -- | 'gcvApplicationId'
  Text ->
  -- | 'gcvCampaignId'
  Text ->
  GetCampaignVersions
getCampaignVersions pApplicationId_ pCampaignId_ =
  GetCampaignVersions'
    { _gcvPageSize = Nothing,
      _gcvToken = Nothing,
      _gcvApplicationId = pApplicationId_,
      _gcvCampaignId = pCampaignId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gcvPageSize :: Lens' GetCampaignVersions (Maybe Text)
gcvPageSize = lens _gcvPageSize (\s a -> s {_gcvPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gcvToken :: Lens' GetCampaignVersions (Maybe Text)
gcvToken = lens _gcvToken (\s a -> s {_gcvToken = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gcvApplicationId :: Lens' GetCampaignVersions Text
gcvApplicationId = lens _gcvApplicationId (\s a -> s {_gcvApplicationId = a})

-- | The unique identifier for the campaign.
gcvCampaignId :: Lens' GetCampaignVersions Text
gcvCampaignId = lens _gcvCampaignId (\s a -> s {_gcvCampaignId = a})

instance AWSRequest GetCampaignVersions where
  type
    Rs GetCampaignVersions =
      GetCampaignVersionsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetCampaignVersionsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetCampaignVersions

instance NFData GetCampaignVersions

instance ToHeaders GetCampaignVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetCampaignVersions where
  toPath GetCampaignVersions' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gcvApplicationId,
        "/campaigns/",
        toBS _gcvCampaignId,
        "/versions"
      ]

instance ToQuery GetCampaignVersions where
  toQuery GetCampaignVersions' {..} =
    mconcat
      ["page-size" =: _gcvPageSize, "token" =: _gcvToken]

-- | /See:/ 'getCampaignVersionsResponse' smart constructor.
data GetCampaignVersionsResponse = GetCampaignVersionsResponse'
  { _gcvrcrsResponseStatus ::
      !Int,
    _gcvrcrsCampaignsResponse ::
      !CampaignsResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCampaignVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvrcrsResponseStatus' - -- | The response status code.
--
-- * 'gcvrcrsCampaignsResponse' - Undocumented member.
getCampaignVersionsResponse ::
  -- | 'gcvrcrsResponseStatus'
  Int ->
  -- | 'gcvrcrsCampaignsResponse'
  CampaignsResponse ->
  GetCampaignVersionsResponse
getCampaignVersionsResponse
  pResponseStatus_
  pCampaignsResponse_ =
    GetCampaignVersionsResponse'
      { _gcvrcrsResponseStatus =
          pResponseStatus_,
        _gcvrcrsCampaignsResponse =
          pCampaignsResponse_
      }

-- | -- | The response status code.
gcvrcrsResponseStatus :: Lens' GetCampaignVersionsResponse Int
gcvrcrsResponseStatus = lens _gcvrcrsResponseStatus (\s a -> s {_gcvrcrsResponseStatus = a})

-- | Undocumented member.
gcvrcrsCampaignsResponse :: Lens' GetCampaignVersionsResponse CampaignsResponse
gcvrcrsCampaignsResponse = lens _gcvrcrsCampaignsResponse (\s a -> s {_gcvrcrsCampaignsResponse = a})

instance NFData GetCampaignVersionsResponse
