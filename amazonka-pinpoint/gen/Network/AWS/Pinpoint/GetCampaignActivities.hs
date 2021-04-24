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
-- Module      : Network.AWS.Pinpoint.GetCampaignActivities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all the activities for a campaign.
module Network.AWS.Pinpoint.GetCampaignActivities
  ( -- * Creating a Request
    getCampaignActivities,
    GetCampaignActivities,

    -- * Request Lenses
    gcaPageSize,
    gcaToken,
    gcaApplicationId,
    gcaCampaignId,

    -- * Destructuring the Response
    getCampaignActivitiesResponse,
    GetCampaignActivitiesResponse,

    -- * Response Lenses
    gcarrsResponseStatus,
    gcarrsActivitiesResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCampaignActivities' smart constructor.
data GetCampaignActivities = GetCampaignActivities'
  { _gcaPageSize ::
      !(Maybe Text),
    _gcaToken :: !(Maybe Text),
    _gcaApplicationId :: !Text,
    _gcaCampaignId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCampaignActivities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcaPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gcaToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gcaApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gcaCampaignId' - The unique identifier for the campaign.
getCampaignActivities ::
  -- | 'gcaApplicationId'
  Text ->
  -- | 'gcaCampaignId'
  Text ->
  GetCampaignActivities
getCampaignActivities pApplicationId_ pCampaignId_ =
  GetCampaignActivities'
    { _gcaPageSize = Nothing,
      _gcaToken = Nothing,
      _gcaApplicationId = pApplicationId_,
      _gcaCampaignId = pCampaignId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gcaPageSize :: Lens' GetCampaignActivities (Maybe Text)
gcaPageSize = lens _gcaPageSize (\s a -> s {_gcaPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gcaToken :: Lens' GetCampaignActivities (Maybe Text)
gcaToken = lens _gcaToken (\s a -> s {_gcaToken = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gcaApplicationId :: Lens' GetCampaignActivities Text
gcaApplicationId = lens _gcaApplicationId (\s a -> s {_gcaApplicationId = a})

-- | The unique identifier for the campaign.
gcaCampaignId :: Lens' GetCampaignActivities Text
gcaCampaignId = lens _gcaCampaignId (\s a -> s {_gcaCampaignId = a})

instance AWSRequest GetCampaignActivities where
  type
    Rs GetCampaignActivities =
      GetCampaignActivitiesResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetCampaignActivitiesResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetCampaignActivities

instance NFData GetCampaignActivities

instance ToHeaders GetCampaignActivities where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetCampaignActivities where
  toPath GetCampaignActivities' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gcaApplicationId,
        "/campaigns/",
        toBS _gcaCampaignId,
        "/activities"
      ]

instance ToQuery GetCampaignActivities where
  toQuery GetCampaignActivities' {..} =
    mconcat
      ["page-size" =: _gcaPageSize, "token" =: _gcaToken]

-- | /See:/ 'getCampaignActivitiesResponse' smart constructor.
data GetCampaignActivitiesResponse = GetCampaignActivitiesResponse'
  { _gcarrsResponseStatus ::
      !Int,
    _gcarrsActivitiesResponse ::
      !ActivitiesResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCampaignActivitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcarrsResponseStatus' - -- | The response status code.
--
-- * 'gcarrsActivitiesResponse' - Undocumented member.
getCampaignActivitiesResponse ::
  -- | 'gcarrsResponseStatus'
  Int ->
  -- | 'gcarrsActivitiesResponse'
  ActivitiesResponse ->
  GetCampaignActivitiesResponse
getCampaignActivitiesResponse
  pResponseStatus_
  pActivitiesResponse_ =
    GetCampaignActivitiesResponse'
      { _gcarrsResponseStatus =
          pResponseStatus_,
        _gcarrsActivitiesResponse =
          pActivitiesResponse_
      }

-- | -- | The response status code.
gcarrsResponseStatus :: Lens' GetCampaignActivitiesResponse Int
gcarrsResponseStatus = lens _gcarrsResponseStatus (\s a -> s {_gcarrsResponseStatus = a})

-- | Undocumented member.
gcarrsActivitiesResponse :: Lens' GetCampaignActivitiesResponse ActivitiesResponse
gcarrsActivitiesResponse = lens _gcarrsActivitiesResponse (\s a -> s {_gcarrsActivitiesResponse = a})

instance NFData GetCampaignActivitiesResponse
