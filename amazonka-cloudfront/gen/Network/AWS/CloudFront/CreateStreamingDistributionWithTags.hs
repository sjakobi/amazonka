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
-- Module      : Network.AWS.CloudFront.CreateStreamingDistributionWithTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is deprecated. Amazon CloudFront is deprecating real-time messaging protocol (RTMP) distributions on December 31, 2020. For more information, <http://forums.aws.amazon.com/ann.jspa?annID=7356 read the announcement> on the Amazon CloudFront discussion forum.
module Network.AWS.CloudFront.CreateStreamingDistributionWithTags
  ( -- * Creating a Request
    createStreamingDistributionWithTags,
    CreateStreamingDistributionWithTags,

    -- * Request Lenses
    csdwtStreamingDistributionConfigWithTags,

    -- * Destructuring the Response
    createStreamingDistributionWithTagsResponse,
    CreateStreamingDistributionWithTagsResponse,

    -- * Response Lenses
    csdwtrrsETag,
    csdwtrrsStreamingDistribution,
    csdwtrrsLocation,
    csdwtrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to create a new streaming distribution with tags.
--
--
--
-- /See:/ 'createStreamingDistributionWithTags' smart constructor.
newtype CreateStreamingDistributionWithTags = CreateStreamingDistributionWithTags'
  { _csdwtStreamingDistributionConfigWithTags ::
      StreamingDistributionConfigWithTags
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateStreamingDistributionWithTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdwtStreamingDistributionConfigWithTags' - The streaming distribution's configuration information.
createStreamingDistributionWithTags ::
  -- | 'csdwtStreamingDistributionConfigWithTags'
  StreamingDistributionConfigWithTags ->
  CreateStreamingDistributionWithTags
createStreamingDistributionWithTags
  pStreamingDistributionConfigWithTags_ =
    CreateStreamingDistributionWithTags'
      { _csdwtStreamingDistributionConfigWithTags =
          pStreamingDistributionConfigWithTags_
      }

-- | The streaming distribution's configuration information.
csdwtStreamingDistributionConfigWithTags :: Lens' CreateStreamingDistributionWithTags StreamingDistributionConfigWithTags
csdwtStreamingDistributionConfigWithTags = lens _csdwtStreamingDistributionConfigWithTags (\s a -> s {_csdwtStreamingDistributionConfigWithTags = a})

instance
  AWSRequest
    CreateStreamingDistributionWithTags
  where
  type
    Rs CreateStreamingDistributionWithTags =
      CreateStreamingDistributionWithTagsResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateStreamingDistributionWithTagsResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateStreamingDistributionWithTags

instance NFData CreateStreamingDistributionWithTags

instance
  ToElement
    CreateStreamingDistributionWithTags
  where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}StreamingDistributionConfigWithTags"
      . _csdwtStreamingDistributionConfigWithTags

instance
  ToHeaders
    CreateStreamingDistributionWithTags
  where
  toHeaders = const mempty

instance ToPath CreateStreamingDistributionWithTags where
  toPath = const "/2020-05-31/streaming-distribution"

instance ToQuery CreateStreamingDistributionWithTags where
  toQuery = const (mconcat ["WithTags"])

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'createStreamingDistributionWithTagsResponse' smart constructor.
data CreateStreamingDistributionWithTagsResponse = CreateStreamingDistributionWithTagsResponse'
  { _csdwtrrsETag ::
      !( Maybe
           Text
       ),
    _csdwtrrsStreamingDistribution ::
      !( Maybe
           StreamingDistribution
       ),
    _csdwtrrsLocation ::
      !( Maybe
           Text
       ),
    _csdwtrrsResponseStatus ::
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

-- | Creates a value of 'CreateStreamingDistributionWithTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdwtrrsETag' - The current version of the distribution created.
--
-- * 'csdwtrrsStreamingDistribution' - The streaming distribution's information.
--
-- * 'csdwtrrsLocation' - The fully qualified URI of the new streaming distribution resource just created.
--
-- * 'csdwtrrsResponseStatus' - -- | The response status code.
createStreamingDistributionWithTagsResponse ::
  -- | 'csdwtrrsResponseStatus'
  Int ->
  CreateStreamingDistributionWithTagsResponse
createStreamingDistributionWithTagsResponse
  pResponseStatus_ =
    CreateStreamingDistributionWithTagsResponse'
      { _csdwtrrsETag =
          Nothing,
        _csdwtrrsStreamingDistribution =
          Nothing,
        _csdwtrrsLocation = Nothing,
        _csdwtrrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the distribution created.
csdwtrrsETag :: Lens' CreateStreamingDistributionWithTagsResponse (Maybe Text)
csdwtrrsETag = lens _csdwtrrsETag (\s a -> s {_csdwtrrsETag = a})

-- | The streaming distribution's information.
csdwtrrsStreamingDistribution :: Lens' CreateStreamingDistributionWithTagsResponse (Maybe StreamingDistribution)
csdwtrrsStreamingDistribution = lens _csdwtrrsStreamingDistribution (\s a -> s {_csdwtrrsStreamingDistribution = a})

-- | The fully qualified URI of the new streaming distribution resource just created.
csdwtrrsLocation :: Lens' CreateStreamingDistributionWithTagsResponse (Maybe Text)
csdwtrrsLocation = lens _csdwtrrsLocation (\s a -> s {_csdwtrrsLocation = a})

-- | -- | The response status code.
csdwtrrsResponseStatus :: Lens' CreateStreamingDistributionWithTagsResponse Int
csdwtrrsResponseStatus = lens _csdwtrrsResponseStatus (\s a -> s {_csdwtrrsResponseStatus = a})

instance
  NFData
    CreateStreamingDistributionWithTagsResponse
