{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.Types.SubscribeToShardEventStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.SubscribeToShardEventStream where

import Network.AWS.Kinesis.Types.InternalFailureException
import Network.AWS.Kinesis.Types.KMSAccessDeniedException
import Network.AWS.Kinesis.Types.KMSDisabledException
import Network.AWS.Kinesis.Types.KMSInvalidStateException
import Network.AWS.Kinesis.Types.KMSNotFoundException
import Network.AWS.Kinesis.Types.KMSOptInRequired
import Network.AWS.Kinesis.Types.KMSThrottlingException
import Network.AWS.Kinesis.Types.ResourceInUseException
import Network.AWS.Kinesis.Types.ResourceNotFoundException
import Network.AWS.Kinesis.Types.SubscribeToShardEvent
import Network.AWS.Lens
import Network.AWS.Prelude

-- | This is a tagged union for all of the types of events an enhanced fan-out consumer can receive over HTTP/2 after a call to 'SubscribeToShard' .
--
--
--
-- /See:/ 'subscribeToShardEventStream' smart constructor.
data SubscribeToShardEventStream = SubscribeToShardEventStream'
  { _stsesKMSThrottlingException ::
      !( Maybe
           KMSThrottlingException
       ),
    _stsesKMSInvalidStateException ::
      !( Maybe
           KMSInvalidStateException
       ),
    _stsesKMSNotFoundException ::
      !( Maybe
           KMSNotFoundException
       ),
    _stsesKMSOptInRequired ::
      !( Maybe
           KMSOptInRequired
       ),
    _stsesResourceInUseException ::
      !( Maybe
           ResourceInUseException
       ),
    _stsesKMSAccessDeniedException ::
      !( Maybe
           KMSAccessDeniedException
       ),
    _stsesResourceNotFoundException ::
      !( Maybe
           ResourceNotFoundException
       ),
    _stsesInternalFailureException ::
      !( Maybe
           InternalFailureException
       ),
    _stsesKMSDisabledException ::
      !( Maybe
           KMSDisabledException
       ),
    _stsesSubscribeToShardEvent ::
      !SubscribeToShardEvent
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SubscribeToShardEventStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stsesKMSThrottlingException' - Undocumented member.
--
-- * 'stsesKMSInvalidStateException' - Undocumented member.
--
-- * 'stsesKMSNotFoundException' - Undocumented member.
--
-- * 'stsesKMSOptInRequired' - Undocumented member.
--
-- * 'stsesResourceInUseException' - Undocumented member.
--
-- * 'stsesKMSAccessDeniedException' - Undocumented member.
--
-- * 'stsesResourceNotFoundException' - Undocumented member.
--
-- * 'stsesInternalFailureException' - The processing of the request failed because of an unknown error, exception, or failure.
--
-- * 'stsesKMSDisabledException' - Undocumented member.
--
-- * 'stsesSubscribeToShardEvent' - After you call 'SubscribeToShard' , Kinesis Data Streams sends events of this type to your consumer. For an example of how to handle these events, see </streams/latest/dev/building-enhanced-consumers-api.html Enhanced Fan-Out Using the Kinesis Data Streams API> .
subscribeToShardEventStream ::
  -- | 'stsesSubscribeToShardEvent'
  SubscribeToShardEvent ->
  SubscribeToShardEventStream
subscribeToShardEventStream pSubscribeToShardEvent_ =
  SubscribeToShardEventStream'
    { _stsesKMSThrottlingException =
        Nothing,
      _stsesKMSInvalidStateException = Nothing,
      _stsesKMSNotFoundException = Nothing,
      _stsesKMSOptInRequired = Nothing,
      _stsesResourceInUseException = Nothing,
      _stsesKMSAccessDeniedException = Nothing,
      _stsesResourceNotFoundException = Nothing,
      _stsesInternalFailureException = Nothing,
      _stsesKMSDisabledException = Nothing,
      _stsesSubscribeToShardEvent =
        pSubscribeToShardEvent_
    }

-- | Undocumented member.
stsesKMSThrottlingException :: Lens' SubscribeToShardEventStream (Maybe KMSThrottlingException)
stsesKMSThrottlingException = lens _stsesKMSThrottlingException (\s a -> s {_stsesKMSThrottlingException = a})

-- | Undocumented member.
stsesKMSInvalidStateException :: Lens' SubscribeToShardEventStream (Maybe KMSInvalidStateException)
stsesKMSInvalidStateException = lens _stsesKMSInvalidStateException (\s a -> s {_stsesKMSInvalidStateException = a})

-- | Undocumented member.
stsesKMSNotFoundException :: Lens' SubscribeToShardEventStream (Maybe KMSNotFoundException)
stsesKMSNotFoundException = lens _stsesKMSNotFoundException (\s a -> s {_stsesKMSNotFoundException = a})

-- | Undocumented member.
stsesKMSOptInRequired :: Lens' SubscribeToShardEventStream (Maybe KMSOptInRequired)
stsesKMSOptInRequired = lens _stsesKMSOptInRequired (\s a -> s {_stsesKMSOptInRequired = a})

-- | Undocumented member.
stsesResourceInUseException :: Lens' SubscribeToShardEventStream (Maybe ResourceInUseException)
stsesResourceInUseException = lens _stsesResourceInUseException (\s a -> s {_stsesResourceInUseException = a})

-- | Undocumented member.
stsesKMSAccessDeniedException :: Lens' SubscribeToShardEventStream (Maybe KMSAccessDeniedException)
stsesKMSAccessDeniedException = lens _stsesKMSAccessDeniedException (\s a -> s {_stsesKMSAccessDeniedException = a})

-- | Undocumented member.
stsesResourceNotFoundException :: Lens' SubscribeToShardEventStream (Maybe ResourceNotFoundException)
stsesResourceNotFoundException = lens _stsesResourceNotFoundException (\s a -> s {_stsesResourceNotFoundException = a})

-- | The processing of the request failed because of an unknown error, exception, or failure.
stsesInternalFailureException :: Lens' SubscribeToShardEventStream (Maybe InternalFailureException)
stsesInternalFailureException = lens _stsesInternalFailureException (\s a -> s {_stsesInternalFailureException = a})

-- | Undocumented member.
stsesKMSDisabledException :: Lens' SubscribeToShardEventStream (Maybe KMSDisabledException)
stsesKMSDisabledException = lens _stsesKMSDisabledException (\s a -> s {_stsesKMSDisabledException = a})

-- | After you call 'SubscribeToShard' , Kinesis Data Streams sends events of this type to your consumer. For an example of how to handle these events, see </streams/latest/dev/building-enhanced-consumers-api.html Enhanced Fan-Out Using the Kinesis Data Streams API> .
stsesSubscribeToShardEvent :: Lens' SubscribeToShardEventStream SubscribeToShardEvent
stsesSubscribeToShardEvent = lens _stsesSubscribeToShardEvent (\s a -> s {_stsesSubscribeToShardEvent = a})

instance FromJSON SubscribeToShardEventStream where
  parseJSON =
    withObject
      "SubscribeToShardEventStream"
      ( \x ->
          SubscribeToShardEventStream'
            <$> (x .:? "KMSThrottlingException")
            <*> (x .:? "KMSInvalidStateException")
            <*> (x .:? "KMSNotFoundException")
            <*> (x .:? "KMSOptInRequired")
            <*> (x .:? "ResourceInUseException")
            <*> (x .:? "KMSAccessDeniedException")
            <*> (x .:? "ResourceNotFoundException")
            <*> (x .:? "InternalFailureException")
            <*> (x .:? "KMSDisabledException")
            <*> (x .: "SubscribeToShardEvent")
      )

instance Hashable SubscribeToShardEventStream

instance NFData SubscribeToShardEventStream
