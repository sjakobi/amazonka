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
-- Module      : Network.AWS.Pinpoint.GetCampaigns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.
module Network.AWS.Pinpoint.GetCampaigns
  ( -- * Creating a Request
    getCampaigns,
    GetCampaigns,

    -- * Request Lenses
    gcsPageSize,
    gcsToken,
    gcsApplicationId,

    -- * Destructuring the Response
    getCampaignsResponse,
    GetCampaignsResponse,

    -- * Response Lenses
    gcrcrsResponseStatus,
    gcrcrsCampaignsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCampaigns' smart constructor.
data GetCampaigns = GetCampaigns'
  { _gcsPageSize ::
      !(Maybe Text),
    _gcsToken :: !(Maybe Text),
    _gcsApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCampaigns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gcsToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gcsApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getCampaigns ::
  -- | 'gcsApplicationId'
  Text ->
  GetCampaigns
getCampaigns pApplicationId_ =
  GetCampaigns'
    { _gcsPageSize = Nothing,
      _gcsToken = Nothing,
      _gcsApplicationId = pApplicationId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gcsPageSize :: Lens' GetCampaigns (Maybe Text)
gcsPageSize = lens _gcsPageSize (\s a -> s {_gcsPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gcsToken :: Lens' GetCampaigns (Maybe Text)
gcsToken = lens _gcsToken (\s a -> s {_gcsToken = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gcsApplicationId :: Lens' GetCampaigns Text
gcsApplicationId = lens _gcsApplicationId (\s a -> s {_gcsApplicationId = a})

instance AWSRequest GetCampaigns where
  type Rs GetCampaigns = GetCampaignsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetCampaignsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetCampaigns

instance NFData GetCampaigns

instance ToHeaders GetCampaigns where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetCampaigns where
  toPath GetCampaigns' {..} =
    mconcat
      ["/v1/apps/", toBS _gcsApplicationId, "/campaigns"]

instance ToQuery GetCampaigns where
  toQuery GetCampaigns' {..} =
    mconcat
      ["page-size" =: _gcsPageSize, "token" =: _gcsToken]

-- | /See:/ 'getCampaignsResponse' smart constructor.
data GetCampaignsResponse = GetCampaignsResponse'
  { _gcrcrsResponseStatus ::
      !Int,
    _gcrcrsCampaignsResponse ::
      !CampaignsResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCampaignsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrcrsResponseStatus' - -- | The response status code.
--
-- * 'gcrcrsCampaignsResponse' - Undocumented member.
getCampaignsResponse ::
  -- | 'gcrcrsResponseStatus'
  Int ->
  -- | 'gcrcrsCampaignsResponse'
  CampaignsResponse ->
  GetCampaignsResponse
getCampaignsResponse
  pResponseStatus_
  pCampaignsResponse_ =
    GetCampaignsResponse'
      { _gcrcrsResponseStatus =
          pResponseStatus_,
        _gcrcrsCampaignsResponse = pCampaignsResponse_
      }

-- | -- | The response status code.
gcrcrsResponseStatus :: Lens' GetCampaignsResponse Int
gcrcrsResponseStatus = lens _gcrcrsResponseStatus (\s a -> s {_gcrcrsResponseStatus = a})

-- | Undocumented member.
gcrcrsCampaignsResponse :: Lens' GetCampaignsResponse CampaignsResponse
gcrcrsCampaignsResponse = lens _gcrcrsCampaignsResponse (\s a -> s {_gcrcrsCampaignsResponse = a})

instance NFData GetCampaignsResponse
