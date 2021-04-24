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
-- Module      : Network.AWS.Lightsail.GetDistributions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about one or more of your Amazon Lightsail content delivery network (CDN) distributions.
module Network.AWS.Lightsail.GetDistributions
  ( -- * Creating a Request
    getDistributions,
    GetDistributions,

    -- * Request Lenses
    gdPageToken,
    gdDistributionName,

    -- * Destructuring the Response
    getDistributionsResponse,
    GetDistributionsResponse,

    -- * Response Lenses
    gdrrsDistributions,
    gdrrsNextPageToken,
    gdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDistributions' smart constructor.
data GetDistributions = GetDistributions'
  { _gdPageToken ::
      !(Maybe Text),
    _gdDistributionName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDistributions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDistributions@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
--
-- * 'gdDistributionName' - The name of the distribution for which to return information. Use the @GetDistributions@ action to get a list of distribution names that you can specify. When omitted, the response includes all of your distributions in the AWS Region where the request is made.
getDistributions ::
  GetDistributions
getDistributions =
  GetDistributions'
    { _gdPageToken = Nothing,
      _gdDistributionName = Nothing
    }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDistributions@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gdPageToken :: Lens' GetDistributions (Maybe Text)
gdPageToken = lens _gdPageToken (\s a -> s {_gdPageToken = a})

-- | The name of the distribution for which to return information. Use the @GetDistributions@ action to get a list of distribution names that you can specify. When omitted, the response includes all of your distributions in the AWS Region where the request is made.
gdDistributionName :: Lens' GetDistributions (Maybe Text)
gdDistributionName = lens _gdDistributionName (\s a -> s {_gdDistributionName = a})

instance AWSRequest GetDistributions where
  type Rs GetDistributions = GetDistributionsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetDistributionsResponse'
            <$> (x .?> "distributions" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDistributions

instance NFData GetDistributions

instance ToHeaders GetDistributions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetDistributions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDistributions where
  toJSON GetDistributions' {..} =
    object
      ( catMaybes
          [ ("pageToken" .=) <$> _gdPageToken,
            ("distributionName" .=) <$> _gdDistributionName
          ]
      )

instance ToPath GetDistributions where
  toPath = const "/"

instance ToQuery GetDistributions where
  toQuery = const mempty

-- | /See:/ 'getDistributionsResponse' smart constructor.
data GetDistributionsResponse = GetDistributionsResponse'
  { _gdrrsDistributions ::
      !( Maybe
           [LightsailDistribution]
       ),
    _gdrrsNextPageToken ::
      !(Maybe Text),
    _gdrrsResponseStatus ::
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

-- | Creates a value of 'GetDistributionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsDistributions' - An array of objects that describe your distributions.
--
-- * 'gdrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDistributions@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
getDistributionsResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  GetDistributionsResponse
getDistributionsResponse pResponseStatus_ =
  GetDistributionsResponse'
    { _gdrrsDistributions =
        Nothing,
      _gdrrsNextPageToken = Nothing,
      _gdrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe your distributions.
gdrrsDistributions :: Lens' GetDistributionsResponse [LightsailDistribution]
gdrrsDistributions = lens _gdrrsDistributions (\s a -> s {_gdrrsDistributions = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDistributions@ request and specify the next page token using the @pageToken@ parameter.
gdrrsNextPageToken :: Lens' GetDistributionsResponse (Maybe Text)
gdrrsNextPageToken = lens _gdrrsNextPageToken (\s a -> s {_gdrrsNextPageToken = a})

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDistributionsResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

instance NFData GetDistributionsResponse
