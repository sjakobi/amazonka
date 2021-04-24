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
-- Module      : Network.AWS.CloudFront.CreateDistributionWithTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new distribution with tags.
module Network.AWS.CloudFront.CreateDistributionWithTags
  ( -- * Creating a Request
    createDistributionWithTags,
    CreateDistributionWithTags,

    -- * Request Lenses
    cdwtDistributionConfigWithTags,

    -- * Destructuring the Response
    createDistributionWithTagsResponse,
    CreateDistributionWithTagsResponse,

    -- * Response Lenses
    cdwtrrsETag,
    cdwtrrsDistribution,
    cdwtrrsLocation,
    cdwtrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to create a new distribution with tags.
--
--
--
-- /See:/ 'createDistributionWithTags' smart constructor.
newtype CreateDistributionWithTags = CreateDistributionWithTags'
  { _cdwtDistributionConfigWithTags ::
      DistributionConfigWithTags
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDistributionWithTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdwtDistributionConfigWithTags' - The distribution's configuration information.
createDistributionWithTags ::
  -- | 'cdwtDistributionConfigWithTags'
  DistributionConfigWithTags ->
  CreateDistributionWithTags
createDistributionWithTags
  pDistributionConfigWithTags_ =
    CreateDistributionWithTags'
      { _cdwtDistributionConfigWithTags =
          pDistributionConfigWithTags_
      }

-- | The distribution's configuration information.
cdwtDistributionConfigWithTags :: Lens' CreateDistributionWithTags DistributionConfigWithTags
cdwtDistributionConfigWithTags = lens _cdwtDistributionConfigWithTags (\s a -> s {_cdwtDistributionConfigWithTags = a})

instance AWSRequest CreateDistributionWithTags where
  type
    Rs CreateDistributionWithTags =
      CreateDistributionWithTagsResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateDistributionWithTagsResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDistributionWithTags

instance NFData CreateDistributionWithTags

instance ToElement CreateDistributionWithTags where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}DistributionConfigWithTags"
      . _cdwtDistributionConfigWithTags

instance ToHeaders CreateDistributionWithTags where
  toHeaders = const mempty

instance ToPath CreateDistributionWithTags where
  toPath = const "/2020-05-31/distribution"

instance ToQuery CreateDistributionWithTags where
  toQuery = const (mconcat ["WithTags"])

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'createDistributionWithTagsResponse' smart constructor.
data CreateDistributionWithTagsResponse = CreateDistributionWithTagsResponse'
  { _cdwtrrsETag ::
      !( Maybe
           Text
       ),
    _cdwtrrsDistribution ::
      !( Maybe
           Distribution
       ),
    _cdwtrrsLocation ::
      !( Maybe
           Text
       ),
    _cdwtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDistributionWithTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdwtrrsETag' - The current version of the distribution created.
--
-- * 'cdwtrrsDistribution' - The distribution's information.
--
-- * 'cdwtrrsLocation' - The fully qualified URI of the new distribution resource just created.
--
-- * 'cdwtrrsResponseStatus' - -- | The response status code.
createDistributionWithTagsResponse ::
  -- | 'cdwtrrsResponseStatus'
  Int ->
  CreateDistributionWithTagsResponse
createDistributionWithTagsResponse pResponseStatus_ =
  CreateDistributionWithTagsResponse'
    { _cdwtrrsETag =
        Nothing,
      _cdwtrrsDistribution = Nothing,
      _cdwtrrsLocation = Nothing,
      _cdwtrrsResponseStatus =
        pResponseStatus_
    }

-- | The current version of the distribution created.
cdwtrrsETag :: Lens' CreateDistributionWithTagsResponse (Maybe Text)
cdwtrrsETag = lens _cdwtrrsETag (\s a -> s {_cdwtrrsETag = a})

-- | The distribution's information.
cdwtrrsDistribution :: Lens' CreateDistributionWithTagsResponse (Maybe Distribution)
cdwtrrsDistribution = lens _cdwtrrsDistribution (\s a -> s {_cdwtrrsDistribution = a})

-- | The fully qualified URI of the new distribution resource just created.
cdwtrrsLocation :: Lens' CreateDistributionWithTagsResponse (Maybe Text)
cdwtrrsLocation = lens _cdwtrrsLocation (\s a -> s {_cdwtrrsLocation = a})

-- | -- | The response status code.
cdwtrrsResponseStatus :: Lens' CreateDistributionWithTagsResponse Int
cdwtrrsResponseStatus = lens _cdwtrrsResponseStatus (\s a -> s {_cdwtrrsResponseStatus = a})

instance NFData CreateDistributionWithTagsResponse
