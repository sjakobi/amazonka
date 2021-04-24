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
-- Module      : Network.AWS.CloudFront.GetStreamingDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specified RTMP distribution, including the distribution configuration.
module Network.AWS.CloudFront.GetStreamingDistribution
  ( -- * Creating a Request
    getStreamingDistribution,
    GetStreamingDistribution,

    -- * Request Lenses
    gsdId,

    -- * Destructuring the Response
    getStreamingDistributionResponse,
    GetStreamingDistributionResponse,

    -- * Response Lenses
    gsdrrsETag,
    gsdrrsStreamingDistribution,
    gsdrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to get a streaming distribution's information.
--
--
--
-- /See:/ 'getStreamingDistribution' smart constructor.
newtype GetStreamingDistribution = GetStreamingDistribution'
  { _gsdId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetStreamingDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdId' - The streaming distribution's ID.
getStreamingDistribution ::
  -- | 'gsdId'
  Text ->
  GetStreamingDistribution
getStreamingDistribution pId_ =
  GetStreamingDistribution' {_gsdId = pId_}

-- | The streaming distribution's ID.
gsdId :: Lens' GetStreamingDistribution Text
gsdId = lens _gsdId (\s a -> s {_gsdId = a})

instance AWSRequest GetStreamingDistribution where
  type
    Rs GetStreamingDistribution =
      GetStreamingDistributionResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetStreamingDistributionResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable GetStreamingDistribution

instance NFData GetStreamingDistribution

instance ToHeaders GetStreamingDistribution where
  toHeaders = const mempty

instance ToPath GetStreamingDistribution where
  toPath GetStreamingDistribution' {..} =
    mconcat
      ["/2020-05-31/streaming-distribution/", toBS _gsdId]

instance ToQuery GetStreamingDistribution where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'getStreamingDistributionResponse' smart constructor.
data GetStreamingDistributionResponse = GetStreamingDistributionResponse'
  { _gsdrrsETag ::
      !( Maybe
           Text
       ),
    _gsdrrsStreamingDistribution ::
      !( Maybe
           StreamingDistribution
       ),
    _gsdrrsResponseStatus ::
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

-- | Creates a value of 'GetStreamingDistributionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdrrsETag' - The current version of the streaming distribution's information. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gsdrrsStreamingDistribution' - The streaming distribution's information.
--
-- * 'gsdrrsResponseStatus' - -- | The response status code.
getStreamingDistributionResponse ::
  -- | 'gsdrrsResponseStatus'
  Int ->
  GetStreamingDistributionResponse
getStreamingDistributionResponse pResponseStatus_ =
  GetStreamingDistributionResponse'
    { _gsdrrsETag =
        Nothing,
      _gsdrrsStreamingDistribution = Nothing,
      _gsdrrsResponseStatus = pResponseStatus_
    }

-- | The current version of the streaming distribution's information. For example: @E2QWRUHAPOMQZL@ .
gsdrrsETag :: Lens' GetStreamingDistributionResponse (Maybe Text)
gsdrrsETag = lens _gsdrrsETag (\s a -> s {_gsdrrsETag = a})

-- | The streaming distribution's information.
gsdrrsStreamingDistribution :: Lens' GetStreamingDistributionResponse (Maybe StreamingDistribution)
gsdrrsStreamingDistribution = lens _gsdrrsStreamingDistribution (\s a -> s {_gsdrrsStreamingDistribution = a})

-- | -- | The response status code.
gsdrrsResponseStatus :: Lens' GetStreamingDistributionResponse Int
gsdrrsResponseStatus = lens _gsdrrsResponseStatus (\s a -> s {_gsdrrsResponseStatus = a})

instance NFData GetStreamingDistributionResponse
