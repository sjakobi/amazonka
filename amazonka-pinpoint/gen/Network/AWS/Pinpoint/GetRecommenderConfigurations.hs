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
-- Module      : Network.AWS.Pinpoint.GetRecommenderConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all the recommender model configurations that are associated with your Amazon Pinpoint account.
module Network.AWS.Pinpoint.GetRecommenderConfigurations
  ( -- * Creating a Request
    getRecommenderConfigurations,
    GetRecommenderConfigurations,

    -- * Request Lenses
    grcPageSize,
    grcToken,

    -- * Destructuring the Response
    getRecommenderConfigurationsResponse,
    GetRecommenderConfigurationsResponse,

    -- * Response Lenses
    grcrrrsResponseStatus,
    grcrrrsListRecommenderConfigurationsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRecommenderConfigurations' smart constructor.
data GetRecommenderConfigurations = GetRecommenderConfigurations'
  { _grcPageSize ::
      !(Maybe Text),
    _grcToken ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRecommenderConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grcPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'grcToken' - The NextToken string that specifies which page of results to return in a paginated response.
getRecommenderConfigurations ::
  GetRecommenderConfigurations
getRecommenderConfigurations =
  GetRecommenderConfigurations'
    { _grcPageSize =
        Nothing,
      _grcToken = Nothing
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
grcPageSize :: Lens' GetRecommenderConfigurations (Maybe Text)
grcPageSize = lens _grcPageSize (\s a -> s {_grcPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
grcToken :: Lens' GetRecommenderConfigurations (Maybe Text)
grcToken = lens _grcToken (\s a -> s {_grcToken = a})

instance AWSRequest GetRecommenderConfigurations where
  type
    Rs GetRecommenderConfigurations =
      GetRecommenderConfigurationsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetRecommenderConfigurationsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetRecommenderConfigurations

instance NFData GetRecommenderConfigurations

instance ToHeaders GetRecommenderConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetRecommenderConfigurations where
  toPath = const "/v1/recommenders"

instance ToQuery GetRecommenderConfigurations where
  toQuery GetRecommenderConfigurations' {..} =
    mconcat
      ["page-size" =: _grcPageSize, "token" =: _grcToken]

-- | /See:/ 'getRecommenderConfigurationsResponse' smart constructor.
data GetRecommenderConfigurationsResponse = GetRecommenderConfigurationsResponse'
  { _grcrrrsResponseStatus ::
      !Int,
    _grcrrrsListRecommenderConfigurationsResponse ::
      !ListRecommenderConfigurationsResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRecommenderConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grcrrrsResponseStatus' - -- | The response status code.
--
-- * 'grcrrrsListRecommenderConfigurationsResponse' - Undocumented member.
getRecommenderConfigurationsResponse ::
  -- | 'grcrrrsResponseStatus'
  Int ->
  -- | 'grcrrrsListRecommenderConfigurationsResponse'
  ListRecommenderConfigurationsResponse ->
  GetRecommenderConfigurationsResponse
getRecommenderConfigurationsResponse
  pResponseStatus_
  pListRecommenderConfigurationsResponse_ =
    GetRecommenderConfigurationsResponse'
      { _grcrrrsResponseStatus =
          pResponseStatus_,
        _grcrrrsListRecommenderConfigurationsResponse =
          pListRecommenderConfigurationsResponse_
      }

-- | -- | The response status code.
grcrrrsResponseStatus :: Lens' GetRecommenderConfigurationsResponse Int
grcrrrsResponseStatus = lens _grcrrrsResponseStatus (\s a -> s {_grcrrrsResponseStatus = a})

-- | Undocumented member.
grcrrrsListRecommenderConfigurationsResponse :: Lens' GetRecommenderConfigurationsResponse ListRecommenderConfigurationsResponse
grcrrrsListRecommenderConfigurationsResponse = lens _grcrrrsListRecommenderConfigurationsResponse (\s a -> s {_grcrrrsListRecommenderConfigurationsResponse = a})

instance NFData GetRecommenderConfigurationsResponse
