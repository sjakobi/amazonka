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
-- Module      : Network.AWS.SQS.SendMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delivers a message to the specified queue.
--
--
-- /Important:/ A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:
--
-- @#x9@ | @#xA@ | @#xD@ | @#x20@ to @#xD7FF@ | @#xE000@ to @#xFFFD@ | @#x10000@ to @#x10FFFF@
--
-- Any characters not included in this list will be rejected. For more information, see the <http://www.w3.org/TR/REC-xml/#charsets W3C specification for characters> .
module Network.AWS.SQS.SendMessage
  ( -- * Creating a Request
    sendMessage,
    SendMessage,

    -- * Request Lenses
    smMessageDeduplicationId,
    smMessageAttributes,
    smMessageSystemAttributes,
    smMessageGroupId,
    smDelaySeconds,
    smQueueURL,
    smMessageBody,

    -- * Destructuring the Response
    sendMessageResponse,
    SendMessageResponse,

    -- * Response Lenses
    smrrsSequenceNumber,
    smrrsMD5OfMessageBody,
    smrrsMD5OfMessageSystemAttributes,
    smrrsMD5OfMessageAttributes,
    smrrsMessageId,
    smrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SQS.Types

-- |
--
--
--
-- /See:/ 'sendMessage' smart constructor.
data SendMessage = SendMessage'
  { _smMessageDeduplicationId ::
      !(Maybe Text),
    _smMessageAttributes ::
      !(Maybe (Map Text MessageAttributeValue)),
    _smMessageSystemAttributes ::
      !( Maybe
           ( Map
               MessageSystemAttributeNameForSends
               MessageSystemAttributeValue
           )
       ),
    _smMessageGroupId :: !(Maybe Text),
    _smDelaySeconds :: !(Maybe Int),
    _smQueueURL :: !Text,
    _smMessageBody :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smMessageDeduplicationId' - This parameter applies only to FIFO (first-in-first-out) queues. The token used for deduplication of sent messages. If a message with a particular @MessageDeduplicationId@ is sent successfully, any messages sent with the same @MessageDeduplicationId@ are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing Exactly-Once Processing> in the /Amazon Simple Queue Service Developer Guide/ .     * Every message must have a unique @MessageDeduplicationId@ ,     * You may provide a @MessageDeduplicationId@ explicitly.     * If you aren't able to provide a @MessageDeduplicationId@ and you enable @ContentBasedDeduplication@ for your queue, Amazon SQS uses a SHA-256 hash to generate the @MessageDeduplicationId@ using the body of the message (but not the attributes of the message).      * If you don't provide a @MessageDeduplicationId@ and the queue doesn't have @ContentBasedDeduplication@ set, the action fails with an error.     * If the queue has @ContentBasedDeduplication@ set, your @MessageDeduplicationId@ overrides the generated one.     * When @ContentBasedDeduplication@ is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.     * If you send one message with @ContentBasedDeduplication@ enabled and then another message with a @MessageDeduplicationId@ that is the same as the one generated for the first @MessageDeduplicationId@ , the two messages are treated as duplicates and only one copy of the message is delivered.  The maximum length of @MessageDeduplicationId@ is 128 characters. @MessageDeduplicationId@ can contain alphanumeric characters (@a-z@ , @A-Z@ , @0-9@ ) and punctuation (@!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~@ ). For best practices of using @MessageDeduplicationId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html Using the MessageDeduplicationId Property> in the /Amazon Simple Queue Service Developer Guide/ .
--
-- * 'smMessageAttributes' - Each message attribute consists of a @Name@ , @Type@ , and @Value@ . For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes Amazon SQS Message Attributes> in the /Amazon Simple Queue Service Developer Guide/ .
--
-- * 'smMessageSystemAttributes' - The message system attribute to send. Each message system attribute consists of a @Name@ , @Type@ , and @Value@ . /Important:/     * Currently, the only supported message system attribute is @AWSTraceHeader@ . Its type must be @String@ and its value must be a correctly formatted AWS X-Ray trace header string.     * The size of a message system attribute doesn't count towards the total size of a message.
--
-- * 'smMessageGroupId' - This parameter applies only to FIFO (first-in-first-out) queues. The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use @MessageGroupId@ values (for example, session data for multiple users). In this scenario, multiple consumers can process the queue, but the session data of each user is processed in a FIFO fashion.     * You must associate a non-empty @MessageGroupId@ with a message. If you don't provide a @MessageGroupId@ , the action fails.     * @ReceiveMessage@ might return messages with multiple @MessageGroupId@ values. For each @MessageGroupId@ , the messages are sorted by time sent. The caller can't specify a @MessageGroupId@ . The length of @MessageGroupId@ is 128 characters. Valid values: alphanumeric characters and punctuation @(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)@ . For best practices of using @MessageGroupId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html Using the MessageGroupId Property> in the /Amazon Simple Queue Service Developer Guide/ . /Important:/ @MessageGroupId@ is required for FIFO queues. You can't use it for Standard queues.
--
-- * 'smDelaySeconds' - The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive @DelaySeconds@ value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies.
--
-- * 'smQueueURL' - The URL of the Amazon SQS queue to which a message is sent. Queue URLs and names are case-sensitive.
--
-- * 'smMessageBody' - The message to send. The minimum size is one character. The maximum size is 256 KB. /Important:/ A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed: @#x9@ | @#xA@ | @#xD@ | @#x20@ to @#xD7FF@ | @#xE000@ to @#xFFFD@ | @#x10000@ to @#x10FFFF@  Any characters not included in this list will be rejected. For more information, see the <http://www.w3.org/TR/REC-xml/#charsets W3C specification for characters> .
sendMessage ::
  -- | 'smQueueURL'
  Text ->
  -- | 'smMessageBody'
  Text ->
  SendMessage
sendMessage pQueueURL_ pMessageBody_ =
  SendMessage'
    { _smMessageDeduplicationId = Nothing,
      _smMessageAttributes = Nothing,
      _smMessageSystemAttributes = Nothing,
      _smMessageGroupId = Nothing,
      _smDelaySeconds = Nothing,
      _smQueueURL = pQueueURL_,
      _smMessageBody = pMessageBody_
    }

-- | This parameter applies only to FIFO (first-in-first-out) queues. The token used for deduplication of sent messages. If a message with a particular @MessageDeduplicationId@ is sent successfully, any messages sent with the same @MessageDeduplicationId@ are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing Exactly-Once Processing> in the /Amazon Simple Queue Service Developer Guide/ .     * Every message must have a unique @MessageDeduplicationId@ ,     * You may provide a @MessageDeduplicationId@ explicitly.     * If you aren't able to provide a @MessageDeduplicationId@ and you enable @ContentBasedDeduplication@ for your queue, Amazon SQS uses a SHA-256 hash to generate the @MessageDeduplicationId@ using the body of the message (but not the attributes of the message).      * If you don't provide a @MessageDeduplicationId@ and the queue doesn't have @ContentBasedDeduplication@ set, the action fails with an error.     * If the queue has @ContentBasedDeduplication@ set, your @MessageDeduplicationId@ overrides the generated one.     * When @ContentBasedDeduplication@ is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.     * If you send one message with @ContentBasedDeduplication@ enabled and then another message with a @MessageDeduplicationId@ that is the same as the one generated for the first @MessageDeduplicationId@ , the two messages are treated as duplicates and only one copy of the message is delivered.  The maximum length of @MessageDeduplicationId@ is 128 characters. @MessageDeduplicationId@ can contain alphanumeric characters (@a-z@ , @A-Z@ , @0-9@ ) and punctuation (@!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~@ ). For best practices of using @MessageDeduplicationId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html Using the MessageDeduplicationId Property> in the /Amazon Simple Queue Service Developer Guide/ .
smMessageDeduplicationId :: Lens' SendMessage (Maybe Text)
smMessageDeduplicationId = lens _smMessageDeduplicationId (\s a -> s {_smMessageDeduplicationId = a})

-- | Each message attribute consists of a @Name@ , @Type@ , and @Value@ . For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes Amazon SQS Message Attributes> in the /Amazon Simple Queue Service Developer Guide/ .
smMessageAttributes :: Lens' SendMessage (HashMap Text MessageAttributeValue)
smMessageAttributes = lens _smMessageAttributes (\s a -> s {_smMessageAttributes = a}) . _Default . _Map

-- | The message system attribute to send. Each message system attribute consists of a @Name@ , @Type@ , and @Value@ . /Important:/     * Currently, the only supported message system attribute is @AWSTraceHeader@ . Its type must be @String@ and its value must be a correctly formatted AWS X-Ray trace header string.     * The size of a message system attribute doesn't count towards the total size of a message.
smMessageSystemAttributes :: Lens' SendMessage (HashMap MessageSystemAttributeNameForSends MessageSystemAttributeValue)
smMessageSystemAttributes = lens _smMessageSystemAttributes (\s a -> s {_smMessageSystemAttributes = a}) . _Default . _Map

-- | This parameter applies only to FIFO (first-in-first-out) queues. The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use @MessageGroupId@ values (for example, session data for multiple users). In this scenario, multiple consumers can process the queue, but the session data of each user is processed in a FIFO fashion.     * You must associate a non-empty @MessageGroupId@ with a message. If you don't provide a @MessageGroupId@ , the action fails.     * @ReceiveMessage@ might return messages with multiple @MessageGroupId@ values. For each @MessageGroupId@ , the messages are sorted by time sent. The caller can't specify a @MessageGroupId@ . The length of @MessageGroupId@ is 128 characters. Valid values: alphanumeric characters and punctuation @(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)@ . For best practices of using @MessageGroupId@ , see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html Using the MessageGroupId Property> in the /Amazon Simple Queue Service Developer Guide/ . /Important:/ @MessageGroupId@ is required for FIFO queues. You can't use it for Standard queues.
smMessageGroupId :: Lens' SendMessage (Maybe Text)
smMessageGroupId = lens _smMessageGroupId (\s a -> s {_smMessageGroupId = a})

-- | The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive @DelaySeconds@ value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies.
smDelaySeconds :: Lens' SendMessage (Maybe Int)
smDelaySeconds = lens _smDelaySeconds (\s a -> s {_smDelaySeconds = a})

-- | The URL of the Amazon SQS queue to which a message is sent. Queue URLs and names are case-sensitive.
smQueueURL :: Lens' SendMessage Text
smQueueURL = lens _smQueueURL (\s a -> s {_smQueueURL = a})

-- | The message to send. The minimum size is one character. The maximum size is 256 KB. /Important:/ A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed: @#x9@ | @#xA@ | @#xD@ | @#x20@ to @#xD7FF@ | @#xE000@ to @#xFFFD@ | @#x10000@ to @#x10FFFF@  Any characters not included in this list will be rejected. For more information, see the <http://www.w3.org/TR/REC-xml/#charsets W3C specification for characters> .
smMessageBody :: Lens' SendMessage Text
smMessageBody = lens _smMessageBody (\s a -> s {_smMessageBody = a})

instance AWSRequest SendMessage where
  type Rs SendMessage = SendMessageResponse
  request = postQuery sqs
  response =
    receiveXMLWrapper
      "SendMessageResult"
      ( \s h x ->
          SendMessageResponse'
            <$> (x .@? "SequenceNumber")
            <*> (x .@? "MD5OfMessageBody")
            <*> (x .@? "MD5OfMessageSystemAttributes")
            <*> (x .@? "MD5OfMessageAttributes")
            <*> (x .@? "MessageId")
            <*> (pure (fromEnum s))
      )

instance Hashable SendMessage

instance NFData SendMessage

instance ToHeaders SendMessage where
  toHeaders = const mempty

instance ToPath SendMessage where
  toPath = const "/"

instance ToQuery SendMessage where
  toQuery SendMessage' {..} =
    mconcat
      [ "Action" =: ("SendMessage" :: ByteString),
        "Version" =: ("2012-11-05" :: ByteString),
        "MessageDeduplicationId"
          =: _smMessageDeduplicationId,
        toQuery
          ( toQueryMap "MessageAttribute" "Name" "Value"
              <$> _smMessageAttributes
          ),
        toQuery
          ( toQueryMap "MessageSystemAttribute" "Name" "Value"
              <$> _smMessageSystemAttributes
          ),
        "MessageGroupId" =: _smMessageGroupId,
        "DelaySeconds" =: _smDelaySeconds,
        "QueueUrl" =: _smQueueURL,
        "MessageBody" =: _smMessageBody
      ]

-- | The @MD5OfMessageBody@ and @MessageId@ elements.
--
--
--
-- /See:/ 'sendMessageResponse' smart constructor.
data SendMessageResponse = SendMessageResponse'
  { _smrrsSequenceNumber ::
      !(Maybe Text),
    _smrrsMD5OfMessageBody ::
      !(Maybe Text),
    _smrrsMD5OfMessageSystemAttributes ::
      !(Maybe Text),
    _smrrsMD5OfMessageAttributes ::
      !(Maybe Text),
    _smrrsMessageId ::
      !(Maybe Text),
    _smrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendMessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smrrsSequenceNumber' - This parameter applies only to FIFO (first-in-first-out) queues. The large, non-consecutive number that Amazon SQS assigns to each message. The length of @SequenceNumber@ is 128 bits. @SequenceNumber@ continues to increase for a particular @MessageGroupId@ .
--
-- * 'smrrsMD5OfMessageBody' - An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
--
-- * 'smrrsMD5OfMessageSystemAttributes' - An MD5 digest of the non-URL-encoded message system attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest.
--
-- * 'smrrsMD5OfMessageAttributes' - An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
--
-- * 'smrrsMessageId' - An attribute containing the @MessageId@ of the message sent to the queue. For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html Queue and Message Identifiers> in the /Amazon Simple Queue Service Developer Guide/ .
--
-- * 'smrrsResponseStatus' - -- | The response status code.
sendMessageResponse ::
  -- | 'smrrsResponseStatus'
  Int ->
  SendMessageResponse
sendMessageResponse pResponseStatus_ =
  SendMessageResponse'
    { _smrrsSequenceNumber =
        Nothing,
      _smrrsMD5OfMessageBody = Nothing,
      _smrrsMD5OfMessageSystemAttributes = Nothing,
      _smrrsMD5OfMessageAttributes = Nothing,
      _smrrsMessageId = Nothing,
      _smrrsResponseStatus = pResponseStatus_
    }

-- | This parameter applies only to FIFO (first-in-first-out) queues. The large, non-consecutive number that Amazon SQS assigns to each message. The length of @SequenceNumber@ is 128 bits. @SequenceNumber@ continues to increase for a particular @MessageGroupId@ .
smrrsSequenceNumber :: Lens' SendMessageResponse (Maybe Text)
smrrsSequenceNumber = lens _smrrsSequenceNumber (\s a -> s {_smrrsSequenceNumber = a})

-- | An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
smrrsMD5OfMessageBody :: Lens' SendMessageResponse (Maybe Text)
smrrsMD5OfMessageBody = lens _smrrsMD5OfMessageBody (\s a -> s {_smrrsMD5OfMessageBody = a})

-- | An MD5 digest of the non-URL-encoded message system attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest.
smrrsMD5OfMessageSystemAttributes :: Lens' SendMessageResponse (Maybe Text)
smrrsMD5OfMessageSystemAttributes = lens _smrrsMD5OfMessageSystemAttributes (\s a -> s {_smrrsMD5OfMessageSystemAttributes = a})

-- | An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
smrrsMD5OfMessageAttributes :: Lens' SendMessageResponse (Maybe Text)
smrrsMD5OfMessageAttributes = lens _smrrsMD5OfMessageAttributes (\s a -> s {_smrrsMD5OfMessageAttributes = a})

-- | An attribute containing the @MessageId@ of the message sent to the queue. For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html Queue and Message Identifiers> in the /Amazon Simple Queue Service Developer Guide/ .
smrrsMessageId :: Lens' SendMessageResponse (Maybe Text)
smrrsMessageId = lens _smrrsMessageId (\s a -> s {_smrrsMessageId = a})

-- | -- | The response status code.
smrrsResponseStatus :: Lens' SendMessageResponse Int
smrrsResponseStatus = lens _smrrsResponseStatus (\s a -> s {_smrrsResponseStatus = a})

instance NFData SendMessageResponse
