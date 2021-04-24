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
-- Module      : Network.AWS.SNS.Subscribe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Subscribes an endpoint to an Amazon SNS topic. If the endpoint type is HTTP/S or email, or if the endpoint and the topic are not in the same AWS account, the endpoint owner must run the @ConfirmSubscription@ action to confirm the subscription.
--
--
-- You call the @ConfirmSubscription@ action with the token from the subscription response. Confirmation tokens are valid for three days.
--
-- This action is throttled at 100 transactions per second (TPS).
module Network.AWS.SNS.Subscribe
  ( -- * Creating a Request
    subscribe,
    Subscribe,

    -- * Request Lenses
    subAttributes,
    subReturnSubscriptionARN,
    subEndpoint,
    subTopicARN,
    subProtocol,

    -- * Destructuring the Response
    subscribeResponse,
    SubscribeResponse,

    -- * Response Lenses
    srrsSubscriptionARN,
    srrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SNS.Types

-- | Input for Subscribe action.
--
--
--
-- /See:/ 'subscribe' smart constructor.
data Subscribe = Subscribe'
  { _subAttributes ::
      !(Maybe (Map Text Text)),
    _subReturnSubscriptionARN :: !(Maybe Bool),
    _subEndpoint :: !(Maybe Text),
    _subTopicARN :: !Text,
    _subProtocol :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Subscribe' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subAttributes' - A map of attributes with their corresponding values. The following lists the names, descriptions, and values of the special request parameters that the @SetTopicAttributes@ action uses:     * @DeliveryPolicy@ – The policy that defines how Amazon SNS retries failed deliveries to HTTP/S endpoints.     * @FilterPolicy@ – The simple JSON object that lets your subscriber receive only a subset of messages, rather than receiving every message published to the topic.     * @RawMessageDelivery@ – When set to @true@ , enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the need for the endpoints to process JSON formatting, which is otherwise created for Amazon SNS metadata.     * @RedrivePolicy@ – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable) or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held in the dead-letter queue for further analysis or reprocessing. The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:     * @SubscriptionRoleArn@ – The ARN of the IAM role that has the following:     * Permission to write to the Kinesis Data Firehose delivery stream     * Amazon SNS listed as a trusted entity Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/sns-kinesis-subscriber.html Fanout to Kinesis Data Firehose delivery streams> in the /Amazon SNS Developer Guide/ .
--
-- * 'subReturnSubscriptionARN' - Sets whether the response from the @Subscribe@ request includes the subscription ARN, even if the subscription is not yet confirmed. If you set this parameter to @true@ , the response includes the ARN in all cases, even if the subscription is not yet confirmed. In addition to the ARN for confirmed subscriptions, the response also includes the @pending subscription@ ARN value for subscriptions that aren't yet confirmed. A subscription becomes confirmed when the subscriber calls the @ConfirmSubscription@ action with a confirmation token. The default value is @false@ .
--
-- * 'subEndpoint' - The endpoint that you want to receive notifications. Endpoints vary by protocol:     * For the @http@ protocol, the (public) endpoint is a URL beginning with @http://@ .     * For the @https@ protocol, the (public) endpoint is a URL beginning with @https://@ .     * For the @email@ protocol, the endpoint is an email address.     * For the @email-json@ protocol, the endpoint is an email address.     * For the @sms@ protocol, the endpoint is a phone number of an SMS-enabled device.     * For the @sqs@ protocol, the endpoint is the ARN of an Amazon SQS queue.     * For the @application@ protocol, the endpoint is the EndpointArn of a mobile app and device.     * For the @lambda@ protocol, the endpoint is the ARN of an AWS Lambda function.     * For the @firehose@ protocol, the endpoint is the ARN of an Amazon Kinesis Data Firehose delivery stream.
--
-- * 'subTopicARN' - The ARN of the topic you want to subscribe to.
--
-- * 'subProtocol' - The protocol that you want to use. Supported protocols include:     * @http@ – delivery of JSON-encoded message via HTTP POST     * @https@ – delivery of JSON-encoded message via HTTPS POST     * @email@ – delivery of message via SMTP     * @email-json@ – delivery of JSON-encoded message via SMTP     * @sms@ – delivery of message via SMS     * @sqs@ – delivery of JSON-encoded message to an Amazon SQS queue     * @application@ – delivery of JSON-encoded message to an EndpointArn for a mobile app and device     * @lambda@ – delivery of JSON-encoded message to an AWS Lambda function     * @firehose@ – delivery of JSON-encoded message to an Amazon Kinesis Data Firehose delivery stream.
subscribe ::
  -- | 'subTopicARN'
  Text ->
  -- | 'subProtocol'
  Text ->
  Subscribe
subscribe pTopicARN_ pProtocol_ =
  Subscribe'
    { _subAttributes = Nothing,
      _subReturnSubscriptionARN = Nothing,
      _subEndpoint = Nothing,
      _subTopicARN = pTopicARN_,
      _subProtocol = pProtocol_
    }

-- | A map of attributes with their corresponding values. The following lists the names, descriptions, and values of the special request parameters that the @SetTopicAttributes@ action uses:     * @DeliveryPolicy@ – The policy that defines how Amazon SNS retries failed deliveries to HTTP/S endpoints.     * @FilterPolicy@ – The simple JSON object that lets your subscriber receive only a subset of messages, rather than receiving every message published to the topic.     * @RawMessageDelivery@ – When set to @true@ , enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the need for the endpoints to process JSON formatting, which is otherwise created for Amazon SNS metadata.     * @RedrivePolicy@ – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable) or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held in the dead-letter queue for further analysis or reprocessing. The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:     * @SubscriptionRoleArn@ – The ARN of the IAM role that has the following:     * Permission to write to the Kinesis Data Firehose delivery stream     * Amazon SNS listed as a trusted entity Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/sns-kinesis-subscriber.html Fanout to Kinesis Data Firehose delivery streams> in the /Amazon SNS Developer Guide/ .
subAttributes :: Lens' Subscribe (HashMap Text Text)
subAttributes = lens _subAttributes (\s a -> s {_subAttributes = a}) . _Default . _Map

-- | Sets whether the response from the @Subscribe@ request includes the subscription ARN, even if the subscription is not yet confirmed. If you set this parameter to @true@ , the response includes the ARN in all cases, even if the subscription is not yet confirmed. In addition to the ARN for confirmed subscriptions, the response also includes the @pending subscription@ ARN value for subscriptions that aren't yet confirmed. A subscription becomes confirmed when the subscriber calls the @ConfirmSubscription@ action with a confirmation token. The default value is @false@ .
subReturnSubscriptionARN :: Lens' Subscribe (Maybe Bool)
subReturnSubscriptionARN = lens _subReturnSubscriptionARN (\s a -> s {_subReturnSubscriptionARN = a})

-- | The endpoint that you want to receive notifications. Endpoints vary by protocol:     * For the @http@ protocol, the (public) endpoint is a URL beginning with @http://@ .     * For the @https@ protocol, the (public) endpoint is a URL beginning with @https://@ .     * For the @email@ protocol, the endpoint is an email address.     * For the @email-json@ protocol, the endpoint is an email address.     * For the @sms@ protocol, the endpoint is a phone number of an SMS-enabled device.     * For the @sqs@ protocol, the endpoint is the ARN of an Amazon SQS queue.     * For the @application@ protocol, the endpoint is the EndpointArn of a mobile app and device.     * For the @lambda@ protocol, the endpoint is the ARN of an AWS Lambda function.     * For the @firehose@ protocol, the endpoint is the ARN of an Amazon Kinesis Data Firehose delivery stream.
subEndpoint :: Lens' Subscribe (Maybe Text)
subEndpoint = lens _subEndpoint (\s a -> s {_subEndpoint = a})

-- | The ARN of the topic you want to subscribe to.
subTopicARN :: Lens' Subscribe Text
subTopicARN = lens _subTopicARN (\s a -> s {_subTopicARN = a})

-- | The protocol that you want to use. Supported protocols include:     * @http@ – delivery of JSON-encoded message via HTTP POST     * @https@ – delivery of JSON-encoded message via HTTPS POST     * @email@ – delivery of message via SMTP     * @email-json@ – delivery of JSON-encoded message via SMTP     * @sms@ – delivery of message via SMS     * @sqs@ – delivery of JSON-encoded message to an Amazon SQS queue     * @application@ – delivery of JSON-encoded message to an EndpointArn for a mobile app and device     * @lambda@ – delivery of JSON-encoded message to an AWS Lambda function     * @firehose@ – delivery of JSON-encoded message to an Amazon Kinesis Data Firehose delivery stream.
subProtocol :: Lens' Subscribe Text
subProtocol = lens _subProtocol (\s a -> s {_subProtocol = a})

instance AWSRequest Subscribe where
  type Rs Subscribe = SubscribeResponse
  request = postQuery sns
  response =
    receiveXMLWrapper
      "SubscribeResult"
      ( \s h x ->
          SubscribeResponse'
            <$> (x .@? "SubscriptionArn") <*> (pure (fromEnum s))
      )

instance Hashable Subscribe

instance NFData Subscribe

instance ToHeaders Subscribe where
  toHeaders = const mempty

instance ToPath Subscribe where
  toPath = const "/"

instance ToQuery Subscribe where
  toQuery Subscribe' {..} =
    mconcat
      [ "Action" =: ("Subscribe" :: ByteString),
        "Version" =: ("2010-03-31" :: ByteString),
        "Attributes"
          =: toQuery
            ( toQueryMap "entry" "key" "value"
                <$> _subAttributes
            ),
        "ReturnSubscriptionArn" =: _subReturnSubscriptionARN,
        "Endpoint" =: _subEndpoint,
        "TopicArn" =: _subTopicARN,
        "Protocol" =: _subProtocol
      ]

-- | Response for Subscribe action.
--
--
--
-- /See:/ 'subscribeResponse' smart constructor.
data SubscribeResponse = SubscribeResponse'
  { _srrsSubscriptionARN ::
      !(Maybe Text),
    _srrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SubscribeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrsSubscriptionARN' - The ARN of the subscription if it is confirmed, or the string "pending confirmation" if the subscription requires confirmation. However, if the API request parameter @ReturnSubscriptionArn@ is true, then the value is always the subscription ARN, even if the subscription requires confirmation.
--
-- * 'srrsResponseStatus' - -- | The response status code.
subscribeResponse ::
  -- | 'srrsResponseStatus'
  Int ->
  SubscribeResponse
subscribeResponse pResponseStatus_ =
  SubscribeResponse'
    { _srrsSubscriptionARN = Nothing,
      _srrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the subscription if it is confirmed, or the string "pending confirmation" if the subscription requires confirmation. However, if the API request parameter @ReturnSubscriptionArn@ is true, then the value is always the subscription ARN, even if the subscription requires confirmation.
srrsSubscriptionARN :: Lens' SubscribeResponse (Maybe Text)
srrsSubscriptionARN = lens _srrsSubscriptionARN (\s a -> s {_srrsSubscriptionARN = a})

-- | -- | The response status code.
srrsResponseStatus :: Lens' SubscribeResponse Int
srrsResponseStatus = lens _srrsResponseStatus (\s a -> s {_srrsResponseStatus = a})

instance NFData SubscribeResponse
