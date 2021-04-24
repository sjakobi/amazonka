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
-- Module      : Network.AWS.Pinpoint.GetCampaignVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status, configuration, and other settings for a specific version of a campaign.
module Network.AWS.Pinpoint.GetCampaignVersion
  ( -- * Creating a Request
    getCampaignVersion,
    GetCampaignVersion,

    -- * Request Lenses
    gcvcVersion,
    gcvcApplicationId,
    gcvcCampaignId,

    -- * Destructuring the Response
    getCampaignVersionResponse,
    GetCampaignVersionResponse,

    -- * Response Lenses
    gcvrrsResponseStatus,
    gcvrrsCampaignResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCampaignVersion' smart constructor.
data GetCampaignVersion = GetCampaignVersion'
  { _gcvcVersion ::
      !Text,
    _gcvcApplicationId :: !Text,
    _gcvcCampaignId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCampaignVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvcVersion' - The unique version number (Version property) for the campaign version.
--
-- * 'gcvcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gcvcCampaignId' - The unique identifier for the campaign.
getCampaignVersion ::
  -- | 'gcvcVersion'
  Text ->
  -- | 'gcvcApplicationId'
  Text ->
  -- | 'gcvcCampaignId'
  Text ->
  GetCampaignVersion
getCampaignVersion
  pVersion_
  pApplicationId_
  pCampaignId_ =
    GetCampaignVersion'
      { _gcvcVersion = pVersion_,
        _gcvcApplicationId = pApplicationId_,
        _gcvcCampaignId = pCampaignId_
      }

-- | The unique version number (Version property) for the campaign version.
gcvcVersion :: Lens' GetCampaignVersion Text
gcvcVersion = lens _gcvcVersion (\s a -> s {_gcvcVersion = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gcvcApplicationId :: Lens' GetCampaignVersion Text
gcvcApplicationId = lens _gcvcApplicationId (\s a -> s {_gcvcApplicationId = a})

-- | The unique identifier for the campaign.
gcvcCampaignId :: Lens' GetCampaignVersion Text
gcvcCampaignId = lens _gcvcCampaignId (\s a -> s {_gcvcCampaignId = a})

instance AWSRequest GetCampaignVersion where
  type
    Rs GetCampaignVersion =
      GetCampaignVersionResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetCampaignVersionResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetCampaignVersion

instance NFData GetCampaignVersion

instance ToHeaders GetCampaignVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetCampaignVersion where
  toPath GetCampaignVersion' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gcvcApplicationId,
        "/campaigns/",
        toBS _gcvcCampaignId,
        "/versions/",
        toBS _gcvcVersion
      ]

instance ToQuery GetCampaignVersion where
  toQuery = const mempty

-- | /See:/ 'getCampaignVersionResponse' smart constructor.
data GetCampaignVersionResponse = GetCampaignVersionResponse'
  { _gcvrrsResponseStatus ::
      !Int,
    _gcvrrsCampaignResponse ::
      !CampaignResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCampaignVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvrrsResponseStatus' - -- | The response status code.
--
-- * 'gcvrrsCampaignResponse' - Undocumented member.
getCampaignVersionResponse ::
  -- | 'gcvrrsResponseStatus'
  Int ->
  -- | 'gcvrrsCampaignResponse'
  CampaignResponse ->
  GetCampaignVersionResponse
getCampaignVersionResponse
  pResponseStatus_
  pCampaignResponse_ =
    GetCampaignVersionResponse'
      { _gcvrrsResponseStatus =
          pResponseStatus_,
        _gcvrrsCampaignResponse = pCampaignResponse_
      }

-- | -- | The response status code.
gcvrrsResponseStatus :: Lens' GetCampaignVersionResponse Int
gcvrrsResponseStatus = lens _gcvrrsResponseStatus (\s a -> s {_gcvrrsResponseStatus = a})

-- | Undocumented member.
gcvrrsCampaignResponse :: Lens' GetCampaignVersionResponse CampaignResponse
gcvrrsCampaignResponse = lens _gcvrrsCampaignResponse (\s a -> s {_gcvrrsCampaignResponse = a})

instance NFData GetCampaignVersionResponse
