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
-- Module      : Network.AWS.CloudFront.CreateDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new web distribution. You create a CloudFront distribution to tell CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery. Send a @POST@ request to the @//CloudFront API version/ /distribution@ /@distribution ID@ resource.
--
--
-- /Important:/ When you update a distribution, there are more required fields than when you create a distribution. When you update your distribution by using <https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html UpdateDistribution> , follow the steps included in the documentation to get the current configuration and then make your updates. This helps to make sure that you include all of the required fields. To view a summary, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html Required Fields for Create Distribution and Update Distribution> in the /Amazon CloudFront Developer Guide/ .
module Network.AWS.CloudFront.CreateDistribution
  ( -- * Creating a Request
    createDistribution,
    CreateDistribution,

    -- * Request Lenses
    cdDistributionConfig,

    -- * Destructuring the Response
    createDistributionResponse,
    CreateDistributionResponse,

    -- * Response Lenses
    cdrrsETag,
    cdrrsDistribution,
    cdrrsLocation,
    cdrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to create a new distribution.
--
--
--
-- /See:/ 'createDistribution' smart constructor.
newtype CreateDistribution = CreateDistribution'
  { _cdDistributionConfig ::
      DistributionConfig
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdDistributionConfig' - The distribution's configuration information.
createDistribution ::
  -- | 'cdDistributionConfig'
  DistributionConfig ->
  CreateDistribution
createDistribution pDistributionConfig_ =
  CreateDistribution'
    { _cdDistributionConfig =
        pDistributionConfig_
    }

-- | The distribution's configuration information.
cdDistributionConfig :: Lens' CreateDistribution DistributionConfig
cdDistributionConfig = lens _cdDistributionConfig (\s a -> s {_cdDistributionConfig = a})

instance AWSRequest CreateDistribution where
  type
    Rs CreateDistribution =
      CreateDistributionResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateDistributionResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDistribution

instance NFData CreateDistribution

instance ToElement CreateDistribution where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}DistributionConfig"
      . _cdDistributionConfig

instance ToHeaders CreateDistribution where
  toHeaders = const mempty

instance ToPath CreateDistribution where
  toPath = const "/2020-05-31/distribution"

instance ToQuery CreateDistribution where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'createDistributionResponse' smart constructor.
data CreateDistributionResponse = CreateDistributionResponse'
  { _cdrrsETag ::
      !(Maybe Text),
    _cdrrsDistribution ::
      !( Maybe
           Distribution
       ),
    _cdrrsLocation ::
      !(Maybe Text),
    _cdrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDistributionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsETag' - The current version of the distribution created.
--
-- * 'cdrrsDistribution' - The distribution's information.
--
-- * 'cdrrsLocation' - The fully qualified URI of the new distribution resource just created.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDistributionResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDistributionResponse
createDistributionResponse pResponseStatus_ =
  CreateDistributionResponse'
    { _cdrrsETag = Nothing,
      _cdrrsDistribution = Nothing,
      _cdrrsLocation = Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | The current version of the distribution created.
cdrrsETag :: Lens' CreateDistributionResponse (Maybe Text)
cdrrsETag = lens _cdrrsETag (\s a -> s {_cdrrsETag = a})

-- | The distribution's information.
cdrrsDistribution :: Lens' CreateDistributionResponse (Maybe Distribution)
cdrrsDistribution = lens _cdrrsDistribution (\s a -> s {_cdrrsDistribution = a})

-- | The fully qualified URI of the new distribution resource just created.
cdrrsLocation :: Lens' CreateDistributionResponse (Maybe Text)
cdrrsLocation = lens _cdrrsLocation (\s a -> s {_cdrrsLocation = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDistributionResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDistributionResponse
