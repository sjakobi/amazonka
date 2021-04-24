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
-- Module      : Network.AWS.EC2.CreateSpotDatafeedSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs. You can create one data feed per AWS account. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html Spot Instance data feed> in the /Amazon EC2 User Guide for Linux Instances/ .
module Network.AWS.EC2.CreateSpotDatafeedSubscription
  ( -- * Creating a Request
    createSpotDatafeedSubscription,
    CreateSpotDatafeedSubscription,

    -- * Request Lenses
    csdsDryRun,
    csdsPrefix,
    csdsBucket,

    -- * Destructuring the Response
    createSpotDatafeedSubscriptionResponse,
    CreateSpotDatafeedSubscriptionResponse,

    -- * Response Lenses
    csdsrrsSpotDatafeedSubscription,
    csdsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CreateSpotDatafeedSubscription.
--
--
--
-- /See:/ 'createSpotDatafeedSubscription' smart constructor.
data CreateSpotDatafeedSubscription = CreateSpotDatafeedSubscription'
  { _csdsDryRun ::
      !( Maybe
           Bool
       ),
    _csdsPrefix ::
      !( Maybe
           Text
       ),
    _csdsBucket ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSpotDatafeedSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'csdsPrefix' - The prefix for the data feed file names.
--
-- * 'csdsBucket' - The name of the Amazon S3 bucket in which to store the Spot Instance data feed. For more information about bucket names, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html#bucketnamingrules Rules for bucket naming> in the /Amazon S3 Developer Guide/ .
createSpotDatafeedSubscription ::
  -- | 'csdsBucket'
  Text ->
  CreateSpotDatafeedSubscription
createSpotDatafeedSubscription pBucket_ =
  CreateSpotDatafeedSubscription'
    { _csdsDryRun =
        Nothing,
      _csdsPrefix = Nothing,
      _csdsBucket = pBucket_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
csdsDryRun :: Lens' CreateSpotDatafeedSubscription (Maybe Bool)
csdsDryRun = lens _csdsDryRun (\s a -> s {_csdsDryRun = a})

-- | The prefix for the data feed file names.
csdsPrefix :: Lens' CreateSpotDatafeedSubscription (Maybe Text)
csdsPrefix = lens _csdsPrefix (\s a -> s {_csdsPrefix = a})

-- | The name of the Amazon S3 bucket in which to store the Spot Instance data feed. For more information about bucket names, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html#bucketnamingrules Rules for bucket naming> in the /Amazon S3 Developer Guide/ .
csdsBucket :: Lens' CreateSpotDatafeedSubscription Text
csdsBucket = lens _csdsBucket (\s a -> s {_csdsBucket = a})

instance AWSRequest CreateSpotDatafeedSubscription where
  type
    Rs CreateSpotDatafeedSubscription =
      CreateSpotDatafeedSubscriptionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateSpotDatafeedSubscriptionResponse'
            <$> (x .@? "spotDatafeedSubscription")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSpotDatafeedSubscription

instance NFData CreateSpotDatafeedSubscription

instance ToHeaders CreateSpotDatafeedSubscription where
  toHeaders = const mempty

instance ToPath CreateSpotDatafeedSubscription where
  toPath = const "/"

instance ToQuery CreateSpotDatafeedSubscription where
  toQuery CreateSpotDatafeedSubscription' {..} =
    mconcat
      [ "Action"
          =: ("CreateSpotDatafeedSubscription" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _csdsDryRun,
        "Prefix" =: _csdsPrefix,
        "Bucket" =: _csdsBucket
      ]

-- | Contains the output of CreateSpotDatafeedSubscription.
--
--
--
-- /See:/ 'createSpotDatafeedSubscriptionResponse' smart constructor.
data CreateSpotDatafeedSubscriptionResponse = CreateSpotDatafeedSubscriptionResponse'
  { _csdsrrsSpotDatafeedSubscription ::
      !( Maybe
           SpotDatafeedSubscription
       ),
    _csdsrrsResponseStatus ::
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

-- | Creates a value of 'CreateSpotDatafeedSubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdsrrsSpotDatafeedSubscription' - The Spot Instance data feed subscription.
--
-- * 'csdsrrsResponseStatus' - -- | The response status code.
createSpotDatafeedSubscriptionResponse ::
  -- | 'csdsrrsResponseStatus'
  Int ->
  CreateSpotDatafeedSubscriptionResponse
createSpotDatafeedSubscriptionResponse
  pResponseStatus_ =
    CreateSpotDatafeedSubscriptionResponse'
      { _csdsrrsSpotDatafeedSubscription =
          Nothing,
        _csdsrrsResponseStatus =
          pResponseStatus_
      }

-- | The Spot Instance data feed subscription.
csdsrrsSpotDatafeedSubscription :: Lens' CreateSpotDatafeedSubscriptionResponse (Maybe SpotDatafeedSubscription)
csdsrrsSpotDatafeedSubscription = lens _csdsrrsSpotDatafeedSubscription (\s a -> s {_csdsrrsSpotDatafeedSubscription = a})

-- | -- | The response status code.
csdsrrsResponseStatus :: Lens' CreateSpotDatafeedSubscriptionResponse Int
csdsrrsResponseStatus = lens _csdsrrsResponseStatus (\s a -> s {_csdsrrsResponseStatus = a})

instance
  NFData
    CreateSpotDatafeedSubscriptionResponse
