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
-- Module      : Network.AWS.CloudFront.CreateStreamingDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is deprecated. Amazon CloudFront is deprecating real-time messaging protocol (RTMP) distributions on December 31, 2020. For more information, <http://forums.aws.amazon.com/ann.jspa?annID=7356 read the announcement> on the Amazon CloudFront discussion forum.
module Network.AWS.CloudFront.CreateStreamingDistribution
  ( -- * Creating a Request
    createStreamingDistribution,
    CreateStreamingDistribution,

    -- * Request Lenses
    csdStreamingDistributionConfig,

    -- * Destructuring the Response
    createStreamingDistributionResponse,
    CreateStreamingDistributionResponse,

    -- * Response Lenses
    csdrrsETag,
    csdrrsStreamingDistribution,
    csdrrsLocation,
    csdrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to create a new streaming distribution.
--
--
--
-- /See:/ 'createStreamingDistribution' smart constructor.
newtype CreateStreamingDistribution = CreateStreamingDistribution'
  { _csdStreamingDistributionConfig ::
      StreamingDistributionConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateStreamingDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdStreamingDistributionConfig' - The streaming distribution's configuration information.
createStreamingDistribution ::
  -- | 'csdStreamingDistributionConfig'
  StreamingDistributionConfig ->
  CreateStreamingDistribution
createStreamingDistribution
  pStreamingDistributionConfig_ =
    CreateStreamingDistribution'
      { _csdStreamingDistributionConfig =
          pStreamingDistributionConfig_
      }

-- | The streaming distribution's configuration information.
csdStreamingDistributionConfig :: Lens' CreateStreamingDistribution StreamingDistributionConfig
csdStreamingDistributionConfig = lens _csdStreamingDistributionConfig (\s a -> s {_csdStreamingDistributionConfig = a})

instance AWSRequest CreateStreamingDistribution where
  type
    Rs CreateStreamingDistribution =
      CreateStreamingDistributionResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateStreamingDistributionResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateStreamingDistribution

instance NFData CreateStreamingDistribution

instance ToElement CreateStreamingDistribution where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}StreamingDistributionConfig"
      . _csdStreamingDistributionConfig

instance ToHeaders CreateStreamingDistribution where
  toHeaders = const mempty

instance ToPath CreateStreamingDistribution where
  toPath = const "/2020-05-31/streaming-distribution"

instance ToQuery CreateStreamingDistribution where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'createStreamingDistributionResponse' smart constructor.
data CreateStreamingDistributionResponse = CreateStreamingDistributionResponse'
  { _csdrrsETag ::
      !( Maybe
           Text
       ),
    _csdrrsStreamingDistribution ::
      !( Maybe
           StreamingDistribution
       ),
    _csdrrsLocation ::
      !( Maybe
           Text
       ),
    _csdrrsResponseStatus ::
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

-- | Creates a value of 'CreateStreamingDistributionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdrrsETag' - The current version of the streaming distribution created.
--
-- * 'csdrrsStreamingDistribution' - The streaming distribution's information.
--
-- * 'csdrrsLocation' - The fully qualified URI of the new streaming distribution resource just created.
--
-- * 'csdrrsResponseStatus' - -- | The response status code.
createStreamingDistributionResponse ::
  -- | 'csdrrsResponseStatus'
  Int ->
  CreateStreamingDistributionResponse
createStreamingDistributionResponse pResponseStatus_ =
  CreateStreamingDistributionResponse'
    { _csdrrsETag =
        Nothing,
      _csdrrsStreamingDistribution = Nothing,
      _csdrrsLocation = Nothing,
      _csdrrsResponseStatus =
        pResponseStatus_
    }

-- | The current version of the streaming distribution created.
csdrrsETag :: Lens' CreateStreamingDistributionResponse (Maybe Text)
csdrrsETag = lens _csdrrsETag (\s a -> s {_csdrrsETag = a})

-- | The streaming distribution's information.
csdrrsStreamingDistribution :: Lens' CreateStreamingDistributionResponse (Maybe StreamingDistribution)
csdrrsStreamingDistribution = lens _csdrrsStreamingDistribution (\s a -> s {_csdrrsStreamingDistribution = a})

-- | The fully qualified URI of the new streaming distribution resource just created.
csdrrsLocation :: Lens' CreateStreamingDistributionResponse (Maybe Text)
csdrrsLocation = lens _csdrrsLocation (\s a -> s {_csdrrsLocation = a})

-- | -- | The response status code.
csdrrsResponseStatus :: Lens' CreateStreamingDistributionResponse Int
csdrrsResponseStatus = lens _csdrrsResponseStatus (\s a -> s {_csdrrsResponseStatus = a})

instance NFData CreateStreamingDistributionResponse
