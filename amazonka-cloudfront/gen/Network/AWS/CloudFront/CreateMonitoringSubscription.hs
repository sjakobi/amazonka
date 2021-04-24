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
-- Module      : Network.AWS.CloudFront.CreateMonitoringSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables additional CloudWatch metrics for the specified CloudFront distribution. The additional metrics incur an additional cost.
--
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional Viewing additional CloudFront distribution metrics> in the /Amazon CloudFront Developer Guide/ .
module Network.AWS.CloudFront.CreateMonitoringSubscription
  ( -- * Creating a Request
    createMonitoringSubscription,
    CreateMonitoringSubscription,

    -- * Request Lenses
    cmsMonitoringSubscription,
    cmsDistributionId,

    -- * Destructuring the Response
    createMonitoringSubscriptionResponse,
    CreateMonitoringSubscriptionResponse,

    -- * Response Lenses
    cmsrrsMonitoringSubscription,
    cmsrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createMonitoringSubscription' smart constructor.
data CreateMonitoringSubscription = CreateMonitoringSubscription'
  { _cmsMonitoringSubscription ::
      !MonitoringSubscription,
    _cmsDistributionId ::
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

-- | Creates a value of 'CreateMonitoringSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmsMonitoringSubscription' - A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
--
-- * 'cmsDistributionId' - The ID of the distribution that you are enabling metrics for.
createMonitoringSubscription ::
  -- | 'cmsMonitoringSubscription'
  MonitoringSubscription ->
  -- | 'cmsDistributionId'
  Text ->
  CreateMonitoringSubscription
createMonitoringSubscription
  pMonitoringSubscription_
  pDistributionId_ =
    CreateMonitoringSubscription'
      { _cmsMonitoringSubscription =
          pMonitoringSubscription_,
        _cmsDistributionId = pDistributionId_
      }

-- | A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
cmsMonitoringSubscription :: Lens' CreateMonitoringSubscription MonitoringSubscription
cmsMonitoringSubscription = lens _cmsMonitoringSubscription (\s a -> s {_cmsMonitoringSubscription = a})

-- | The ID of the distribution that you are enabling metrics for.
cmsDistributionId :: Lens' CreateMonitoringSubscription Text
cmsDistributionId = lens _cmsDistributionId (\s a -> s {_cmsDistributionId = a})

instance AWSRequest CreateMonitoringSubscription where
  type
    Rs CreateMonitoringSubscription =
      CreateMonitoringSubscriptionResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateMonitoringSubscriptionResponse'
            <$> (parseXML x) <*> (pure (fromEnum s))
      )

instance Hashable CreateMonitoringSubscription

instance NFData CreateMonitoringSubscription

instance ToElement CreateMonitoringSubscription where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}MonitoringSubscription"
      . _cmsMonitoringSubscription

instance ToHeaders CreateMonitoringSubscription where
  toHeaders = const mempty

instance ToPath CreateMonitoringSubscription where
  toPath CreateMonitoringSubscription' {..} =
    mconcat
      [ "/2020-05-31/distributions/",
        toBS _cmsDistributionId,
        "/monitoring-subscription"
      ]

instance ToQuery CreateMonitoringSubscription where
  toQuery = const mempty

-- | /See:/ 'createMonitoringSubscriptionResponse' smart constructor.
data CreateMonitoringSubscriptionResponse = CreateMonitoringSubscriptionResponse'
  { _cmsrrsMonitoringSubscription ::
      !( Maybe
           MonitoringSubscription
       ),
    _cmsrrsResponseStatus ::
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

-- | Creates a value of 'CreateMonitoringSubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmsrrsMonitoringSubscription' - A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
--
-- * 'cmsrrsResponseStatus' - -- | The response status code.
createMonitoringSubscriptionResponse ::
  -- | 'cmsrrsResponseStatus'
  Int ->
  CreateMonitoringSubscriptionResponse
createMonitoringSubscriptionResponse pResponseStatus_ =
  CreateMonitoringSubscriptionResponse'
    { _cmsrrsMonitoringSubscription =
        Nothing,
      _cmsrrsResponseStatus =
        pResponseStatus_
    }

-- | A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
cmsrrsMonitoringSubscription :: Lens' CreateMonitoringSubscriptionResponse (Maybe MonitoringSubscription)
cmsrrsMonitoringSubscription = lens _cmsrrsMonitoringSubscription (\s a -> s {_cmsrrsMonitoringSubscription = a})

-- | -- | The response status code.
cmsrrsResponseStatus :: Lens' CreateMonitoringSubscriptionResponse Int
cmsrrsResponseStatus = lens _cmsrrsResponseStatus (\s a -> s {_cmsrrsResponseStatus = a})

instance NFData CreateMonitoringSubscriptionResponse
