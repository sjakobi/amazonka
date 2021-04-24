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
-- Module      : Network.AWS.SNS.GetSubscriptionAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the properties of a subscription.
module Network.AWS.SNS.GetSubscriptionAttributes
  ( -- * Creating a Request
    getSubscriptionAttributes,
    GetSubscriptionAttributes,

    -- * Request Lenses
    gsaSubscriptionARN,

    -- * Destructuring the Response
    getSubscriptionAttributesResponse,
    GetSubscriptionAttributesResponse,

    -- * Response Lenses
    gsarrsAttributes,
    gsarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SNS.Types

-- | Input for GetSubscriptionAttributes.
--
--
--
-- /See:/ 'getSubscriptionAttributes' smart constructor.
newtype GetSubscriptionAttributes = GetSubscriptionAttributes'
  { _gsaSubscriptionARN ::
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

-- | Creates a value of 'GetSubscriptionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsaSubscriptionARN' - The ARN of the subscription whose properties you want to get.
getSubscriptionAttributes ::
  -- | 'gsaSubscriptionARN'
  Text ->
  GetSubscriptionAttributes
getSubscriptionAttributes pSubscriptionARN_ =
  GetSubscriptionAttributes'
    { _gsaSubscriptionARN =
        pSubscriptionARN_
    }

-- | The ARN of the subscription whose properties you want to get.
gsaSubscriptionARN :: Lens' GetSubscriptionAttributes Text
gsaSubscriptionARN = lens _gsaSubscriptionARN (\s a -> s {_gsaSubscriptionARN = a})

instance AWSRequest GetSubscriptionAttributes where
  type
    Rs GetSubscriptionAttributes =
      GetSubscriptionAttributesResponse
  request = postQuery sns
  response =
    receiveXMLWrapper
      "GetSubscriptionAttributesResult"
      ( \s h x ->
          GetSubscriptionAttributesResponse'
            <$> ( x .@? "Attributes" .!@ mempty
                    >>= may (parseXMLMap "entry" "key" "value")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable GetSubscriptionAttributes

instance NFData GetSubscriptionAttributes

instance ToHeaders GetSubscriptionAttributes where
  toHeaders = const mempty

instance ToPath GetSubscriptionAttributes where
  toPath = const "/"

instance ToQuery GetSubscriptionAttributes where
  toQuery GetSubscriptionAttributes' {..} =
    mconcat
      [ "Action"
          =: ("GetSubscriptionAttributes" :: ByteString),
        "Version" =: ("2010-03-31" :: ByteString),
        "SubscriptionArn" =: _gsaSubscriptionARN
      ]

-- | Response for GetSubscriptionAttributes action.
--
--
--
-- /See:/ 'getSubscriptionAttributesResponse' smart constructor.
data GetSubscriptionAttributesResponse = GetSubscriptionAttributesResponse'
  { _gsarrsAttributes ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gsarrsResponseStatus ::
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

-- | Creates a value of 'GetSubscriptionAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsarrsAttributes' - A map of the subscription's attributes. Attributes in this map include the following:     * @ConfirmationWasAuthenticated@ – @true@ if the subscription confirmation request was authenticated.     * @DeliveryPolicy@ – The JSON serialization of the subscription's delivery policy.     * @EffectiveDeliveryPolicy@ – The JSON serialization of the effective delivery policy that takes into account the topic delivery policy and account system defaults.     * @FilterPolicy@ – The filter policy JSON that is assigned to the subscription. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html Amazon SNS Message Filtering> in the /Amazon SNS Developer Guide/ .     * @Owner@ – The AWS account ID of the subscription's owner.     * @PendingConfirmation@ – @true@ if the subscription hasn't been confirmed. To confirm a pending subscription, call the @ConfirmSubscription@ action with a confirmation token.     * @RawMessageDelivery@ – @true@ if raw message delivery is enabled for the subscription. Raw messages are free of JSON formatting and can be sent to HTTP/S and Amazon SQS endpoints.     * @RedrivePolicy@ – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable) or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held in the dead-letter queue for further analysis or reprocessing.     * @SubscriptionArn@ – The subscription's ARN.     * @TopicArn@ – The topic ARN that the subscription is associated with. The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:     * @SubscriptionRoleArn@ – The ARN of the IAM role that has the following:     * Permission to write to the Kinesis Data Firehose delivery stream     * Amazon SNS listed as a trusted entity Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/sns-kinesis-subscriber.html Fanout to Kinesis Data Firehose delivery streams> in the /Amazon SNS Developer Guide/ .
--
-- * 'gsarrsResponseStatus' - -- | The response status code.
getSubscriptionAttributesResponse ::
  -- | 'gsarrsResponseStatus'
  Int ->
  GetSubscriptionAttributesResponse
getSubscriptionAttributesResponse pResponseStatus_ =
  GetSubscriptionAttributesResponse'
    { _gsarrsAttributes =
        Nothing,
      _gsarrsResponseStatus = pResponseStatus_
    }

-- | A map of the subscription's attributes. Attributes in this map include the following:     * @ConfirmationWasAuthenticated@ – @true@ if the subscription confirmation request was authenticated.     * @DeliveryPolicy@ – The JSON serialization of the subscription's delivery policy.     * @EffectiveDeliveryPolicy@ – The JSON serialization of the effective delivery policy that takes into account the topic delivery policy and account system defaults.     * @FilterPolicy@ – The filter policy JSON that is assigned to the subscription. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html Amazon SNS Message Filtering> in the /Amazon SNS Developer Guide/ .     * @Owner@ – The AWS account ID of the subscription's owner.     * @PendingConfirmation@ – @true@ if the subscription hasn't been confirmed. To confirm a pending subscription, call the @ConfirmSubscription@ action with a confirmation token.     * @RawMessageDelivery@ – @true@ if raw message delivery is enabled for the subscription. Raw messages are free of JSON formatting and can be sent to HTTP/S and Amazon SQS endpoints.     * @RedrivePolicy@ – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable) or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held in the dead-letter queue for further analysis or reprocessing.     * @SubscriptionArn@ – The subscription's ARN.     * @TopicArn@ – The topic ARN that the subscription is associated with. The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:     * @SubscriptionRoleArn@ – The ARN of the IAM role that has the following:     * Permission to write to the Kinesis Data Firehose delivery stream     * Amazon SNS listed as a trusted entity Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/sns-kinesis-subscriber.html Fanout to Kinesis Data Firehose delivery streams> in the /Amazon SNS Developer Guide/ .
gsarrsAttributes :: Lens' GetSubscriptionAttributesResponse (HashMap Text Text)
gsarrsAttributes = lens _gsarrsAttributes (\s a -> s {_gsarrsAttributes = a}) . _Default . _Map

-- | -- | The response status code.
gsarrsResponseStatus :: Lens' GetSubscriptionAttributesResponse Int
gsarrsResponseStatus = lens _gsarrsResponseStatus (\s a -> s {_gsarrsResponseStatus = a})

instance NFData GetSubscriptionAttributesResponse
