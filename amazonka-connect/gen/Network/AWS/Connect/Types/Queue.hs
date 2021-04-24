{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Queue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Queue where

import Network.AWS.Connect.Types.OutboundCallerConfig
import Network.AWS.Connect.Types.QueueStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a queue.
--
--
--
-- /See:/ 'queue' smart constructor.
data Queue = Queue'
  { _qMaxContacts :: !(Maybe Nat),
    _qStatus :: !(Maybe QueueStatus),
    _qQueueId :: !(Maybe Text),
    _qName :: !(Maybe Text),
    _qQueueARN :: !(Maybe Text),
    _qTags :: !(Maybe (Map Text Text)),
    _qDescription :: !(Maybe Text),
    _qOutboundCallerConfig ::
      !(Maybe OutboundCallerConfig),
    _qHoursOfOperationId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Queue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qMaxContacts' - The maximum number of contacts that can be in the queue before it is considered full.
--
-- * 'qStatus' - The status of the queue.
--
-- * 'qQueueId' - The identifier for the queue.
--
-- * 'qName' - The name of the queue.
--
-- * 'qQueueARN' - The Amazon Resource Name (ARN) for the queue.
--
-- * 'qTags' - One or more tags.
--
-- * 'qDescription' - The description of the queue.
--
-- * 'qOutboundCallerConfig' - The outbound caller ID name, number, and outbound whisper flow.
--
-- * 'qHoursOfOperationId' - The identifier for the hours of operation.
queue ::
  Queue
queue =
  Queue'
    { _qMaxContacts = Nothing,
      _qStatus = Nothing,
      _qQueueId = Nothing,
      _qName = Nothing,
      _qQueueARN = Nothing,
      _qTags = Nothing,
      _qDescription = Nothing,
      _qOutboundCallerConfig = Nothing,
      _qHoursOfOperationId = Nothing
    }

-- | The maximum number of contacts that can be in the queue before it is considered full.
qMaxContacts :: Lens' Queue (Maybe Natural)
qMaxContacts = lens _qMaxContacts (\s a -> s {_qMaxContacts = a}) . mapping _Nat

-- | The status of the queue.
qStatus :: Lens' Queue (Maybe QueueStatus)
qStatus = lens _qStatus (\s a -> s {_qStatus = a})

-- | The identifier for the queue.
qQueueId :: Lens' Queue (Maybe Text)
qQueueId = lens _qQueueId (\s a -> s {_qQueueId = a})

-- | The name of the queue.
qName :: Lens' Queue (Maybe Text)
qName = lens _qName (\s a -> s {_qName = a})

-- | The Amazon Resource Name (ARN) for the queue.
qQueueARN :: Lens' Queue (Maybe Text)
qQueueARN = lens _qQueueARN (\s a -> s {_qQueueARN = a})

-- | One or more tags.
qTags :: Lens' Queue (HashMap Text Text)
qTags = lens _qTags (\s a -> s {_qTags = a}) . _Default . _Map

-- | The description of the queue.
qDescription :: Lens' Queue (Maybe Text)
qDescription = lens _qDescription (\s a -> s {_qDescription = a})

-- | The outbound caller ID name, number, and outbound whisper flow.
qOutboundCallerConfig :: Lens' Queue (Maybe OutboundCallerConfig)
qOutboundCallerConfig = lens _qOutboundCallerConfig (\s a -> s {_qOutboundCallerConfig = a})

-- | The identifier for the hours of operation.
qHoursOfOperationId :: Lens' Queue (Maybe Text)
qHoursOfOperationId = lens _qHoursOfOperationId (\s a -> s {_qHoursOfOperationId = a})

instance FromJSON Queue where
  parseJSON =
    withObject
      "Queue"
      ( \x ->
          Queue'
            <$> (x .:? "MaxContacts")
            <*> (x .:? "Status")
            <*> (x .:? "QueueId")
            <*> (x .:? "Name")
            <*> (x .:? "QueueArn")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "OutboundCallerConfig")
            <*> (x .:? "HoursOfOperationId")
      )

instance Hashable Queue

instance NFData Queue
