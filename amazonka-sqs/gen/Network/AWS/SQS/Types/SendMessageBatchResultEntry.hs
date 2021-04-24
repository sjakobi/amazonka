{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types.SendMessageBatchResultEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.SendMessageBatchResultEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Encloses a @MessageId@ for a successfully-enqueued message in a @'SendMessageBatch' .@
--
--
--
-- /See:/ 'sendMessageBatchResultEntry' smart constructor.
data SendMessageBatchResultEntry = SendMessageBatchResultEntry'
  { _sSequenceNumber ::
      !(Maybe Text),
    _sMD5OfMessageSystemAttributes ::
      !(Maybe Text),
    _sMD5OfMessageAttributes ::
      !(Maybe Text),
    _sId :: !Text,
    _sMessageId ::
      !Text,
    _sMD5OfMessageBody ::
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

-- | Creates a value of 'SendMessageBatchResultEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSequenceNumber' - This parameter applies only to FIFO (first-in-first-out) queues. The large, non-consecutive number that Amazon SQS assigns to each message. The length of @SequenceNumber@ is 128 bits. As @SequenceNumber@ continues to increase for a particular @MessageGroupId@ .
--
-- * 'sMD5OfMessageSystemAttributes' - An MD5 digest of the non-URL-encoded message system attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
--
-- * 'sMD5OfMessageAttributes' - An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
--
-- * 'sId' - An identifier for the message in this batch.
--
-- * 'sMessageId' - An identifier for the message.
--
-- * 'sMD5OfMessageBody' - An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
sendMessageBatchResultEntry ::
  -- | 'sId'
  Text ->
  -- | 'sMessageId'
  Text ->
  -- | 'sMD5OfMessageBody'
  Text ->
  SendMessageBatchResultEntry
sendMessageBatchResultEntry
  pId_
  pMessageId_
  pMD5OfMessageBody_ =
    SendMessageBatchResultEntry'
      { _sSequenceNumber =
          Nothing,
        _sMD5OfMessageSystemAttributes = Nothing,
        _sMD5OfMessageAttributes = Nothing,
        _sId = pId_,
        _sMessageId = pMessageId_,
        _sMD5OfMessageBody = pMD5OfMessageBody_
      }

-- | This parameter applies only to FIFO (first-in-first-out) queues. The large, non-consecutive number that Amazon SQS assigns to each message. The length of @SequenceNumber@ is 128 bits. As @SequenceNumber@ continues to increase for a particular @MessageGroupId@ .
sSequenceNumber :: Lens' SendMessageBatchResultEntry (Maybe Text)
sSequenceNumber = lens _sSequenceNumber (\s a -> s {_sSequenceNumber = a})

-- | An MD5 digest of the non-URL-encoded message system attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
sMD5OfMessageSystemAttributes :: Lens' SendMessageBatchResultEntry (Maybe Text)
sMD5OfMessageSystemAttributes = lens _sMD5OfMessageSystemAttributes (\s a -> s {_sMD5OfMessageSystemAttributes = a})

-- | An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
sMD5OfMessageAttributes :: Lens' SendMessageBatchResultEntry (Maybe Text)
sMD5OfMessageAttributes = lens _sMD5OfMessageAttributes (\s a -> s {_sMD5OfMessageAttributes = a})

-- | An identifier for the message in this batch.
sId :: Lens' SendMessageBatchResultEntry Text
sId = lens _sId (\s a -> s {_sId = a})

-- | An identifier for the message.
sMessageId :: Lens' SendMessageBatchResultEntry Text
sMessageId = lens _sMessageId (\s a -> s {_sMessageId = a})

-- | An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <https://www.ietf.org/rfc/rfc1321.txt RFC1321> .
sMD5OfMessageBody :: Lens' SendMessageBatchResultEntry Text
sMD5OfMessageBody = lens _sMD5OfMessageBody (\s a -> s {_sMD5OfMessageBody = a})

instance FromXML SendMessageBatchResultEntry where
  parseXML x =
    SendMessageBatchResultEntry'
      <$> (x .@? "SequenceNumber")
      <*> (x .@? "MD5OfMessageSystemAttributes")
      <*> (x .@? "MD5OfMessageAttributes")
      <*> (x .@ "Id")
      <*> (x .@ "MessageId")
      <*> (x .@ "MD5OfMessageBody")

instance Hashable SendMessageBatchResultEntry

instance NFData SendMessageBatchResultEntry
