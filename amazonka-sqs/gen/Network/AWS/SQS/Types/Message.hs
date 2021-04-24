{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types.Message
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.Message where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SQS.Types.MessageAttribute
import Network.AWS.SQS.Types.MessageAttributeValue

-- | An Amazon SQS message.
--
--
--
-- /See:/ 'message' smart constructor.
data Message = Message'
  { _mBody :: !(Maybe Text),
    _mMD5OfBody :: !(Maybe Text),
    _mAttributes :: !(Maybe (Map MessageAttribute Text)),
    _mMessageAttributes ::
      !(Maybe (Map Text MessageAttributeValue)),
    _mMD5OfMessageAttributes :: !(Maybe Text),
    _mReceiptHandle :: !(Maybe Text),
    _mMessageId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mBody' - The message's contents (not URL-encoded).
--
-- * 'mMD5OfBody' - An MD5 digest of the non-URL-encoded message body string.
--
-- * 'mAttributes' - A map of the attributes requested in @'ReceiveMessage' @ to their respective values. Supported attributes:     * @ApproximateReceiveCount@      * @ApproximateFirstReceiveTimestamp@      * @MessageDeduplicationId@      * @MessageGroupId@      * @SenderId@      * @SentTimestamp@      * @SequenceNumber@  @ApproximateFirstReceiveTimestamp@ and @SentTimestamp@ are each returned as an integer representing the <http://en.wikipedia.org/wiki/Unix_time epoch time> in milliseconds.
--
-- * 'mMessageAttributes' - Each message attribute consists of a @Name@ , @Type@ , and @Value@ . For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes Amazon SQS Message Attributes> in the /Amazon Simple Queue Service Developer Guide/ .
--
-- * 'mMD5OfMessageAttributes' - An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
--
-- * 'mReceiptHandle' - An identifier associated with the act of receiving the message. A new receipt handle is returned every time you receive a message. When deleting a message, you provide the last received receipt handle to delete the message.
--
-- * 'mMessageId' - A unique identifier for the message. A @MessageId@ is considered unique across all AWS accounts for an extended period of time.
message ::
  Message
message =
  Message'
    { _mBody = Nothing,
      _mMD5OfBody = Nothing,
      _mAttributes = Nothing,
      _mMessageAttributes = Nothing,
      _mMD5OfMessageAttributes = Nothing,
      _mReceiptHandle = Nothing,
      _mMessageId = Nothing
    }

-- | The message's contents (not URL-encoded).
mBody :: Lens' Message (Maybe Text)
mBody = lens _mBody (\s a -> s {_mBody = a})

-- | An MD5 digest of the non-URL-encoded message body string.
mMD5OfBody :: Lens' Message (Maybe Text)
mMD5OfBody = lens _mMD5OfBody (\s a -> s {_mMD5OfBody = a})

-- | A map of the attributes requested in @'ReceiveMessage' @ to their respective values. Supported attributes:     * @ApproximateReceiveCount@      * @ApproximateFirstReceiveTimestamp@      * @MessageDeduplicationId@      * @MessageGroupId@      * @SenderId@      * @SentTimestamp@      * @SequenceNumber@  @ApproximateFirstReceiveTimestamp@ and @SentTimestamp@ are each returned as an integer representing the <http://en.wikipedia.org/wiki/Unix_time epoch time> in milliseconds.
mAttributes :: Lens' Message (HashMap MessageAttribute Text)
mAttributes = lens _mAttributes (\s a -> s {_mAttributes = a}) . _Default . _Map

-- | Each message attribute consists of a @Name@ , @Type@ , and @Value@ . For more information, see <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes Amazon SQS Message Attributes> in the /Amazon Simple Queue Service Developer Guide/ .
mMessageAttributes :: Lens' Message (HashMap Text MessageAttributeValue)
mMessageAttributes = lens _mMessageAttributes (\s a -> s {_mMessageAttributes = a}) . _Default . _Map

-- | An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
mMD5OfMessageAttributes :: Lens' Message (Maybe Text)
mMD5OfMessageAttributes = lens _mMD5OfMessageAttributes (\s a -> s {_mMD5OfMessageAttributes = a})

-- | An identifier associated with the act of receiving the message. A new receipt handle is returned every time you receive a message. When deleting a message, you provide the last received receipt handle to delete the message.
mReceiptHandle :: Lens' Message (Maybe Text)
mReceiptHandle = lens _mReceiptHandle (\s a -> s {_mReceiptHandle = a})

-- | A unique identifier for the message. A @MessageId@ is considered unique across all AWS accounts for an extended period of time.
mMessageId :: Lens' Message (Maybe Text)
mMessageId = lens _mMessageId (\s a -> s {_mMessageId = a})

instance FromXML Message where
  parseXML x =
    Message'
      <$> (x .@? "Body")
      <*> (x .@? "MD5OfBody")
      <*> (may (parseXMLMap "Attribute" "Name" "Value") x)
      <*> ( may
              (parseXMLMap "MessageAttribute" "Name" "Value")
              x
          )
      <*> (x .@? "MD5OfMessageAttributes")
      <*> (x .@? "ReceiptHandle")
      <*> (x .@? "MessageId")

instance Hashable Message

instance NFData Message
