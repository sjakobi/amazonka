{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This is a tagged union for all of the types of events an enhanced
-- fan-out consumer can receive over HTTP\/2 after a call to
-- SubscribeToShard.
--
-- /See:/ 'newSubscribeToShardEventStream' smart constructor.
data SubscribeToShardEventStream = SubscribeToShardEventStream'
  { kMSThrottlingException :: Prelude.Maybe KMSThrottlingException,
    kMSInvalidStateException :: Prelude.Maybe KMSInvalidStateException,
    kMSNotFoundException :: Prelude.Maybe KMSNotFoundException,
    kMSOptInRequired :: Prelude.Maybe KMSOptInRequired,
    resourceInUseException :: Prelude.Maybe ResourceInUseException,
    kMSAccessDeniedException :: Prelude.Maybe KMSAccessDeniedException,
    resourceNotFoundException :: Prelude.Maybe ResourceNotFoundException,
    -- | The processing of the request failed because of an unknown error,
    -- exception, or failure.
    internalFailureException :: Prelude.Maybe InternalFailureException,
    kMSDisabledException :: Prelude.Maybe KMSDisabledException,
    -- | After you call SubscribeToShard, Kinesis Data Streams sends events of
    -- this type to your consumer. For an example of how to handle these
    -- events, see
    -- </streams/latest/dev/building-enhanced-consumers-api.html Enhanced Fan-Out Using the Kinesis Data Streams API>.
    subscribeToShardEvent :: SubscribeToShardEvent
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SubscribeToShardEventStream' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kMSThrottlingException', 'subscribeToShardEventStream_kMSThrottlingException' - Undocumented member.
--
-- 'kMSInvalidStateException', 'subscribeToShardEventStream_kMSInvalidStateException' - Undocumented member.
--
-- 'kMSNotFoundException', 'subscribeToShardEventStream_kMSNotFoundException' - Undocumented member.
--
-- 'kMSOptInRequired', 'subscribeToShardEventStream_kMSOptInRequired' - Undocumented member.
--
-- 'resourceInUseException', 'subscribeToShardEventStream_resourceInUseException' - Undocumented member.
--
-- 'kMSAccessDeniedException', 'subscribeToShardEventStream_kMSAccessDeniedException' - Undocumented member.
--
-- 'resourceNotFoundException', 'subscribeToShardEventStream_resourceNotFoundException' - Undocumented member.
--
-- 'internalFailureException', 'subscribeToShardEventStream_internalFailureException' - The processing of the request failed because of an unknown error,
-- exception, or failure.
--
-- 'kMSDisabledException', 'subscribeToShardEventStream_kMSDisabledException' - Undocumented member.
--
-- 'subscribeToShardEvent', 'subscribeToShardEventStream_subscribeToShardEvent' - After you call SubscribeToShard, Kinesis Data Streams sends events of
-- this type to your consumer. For an example of how to handle these
-- events, see
-- </streams/latest/dev/building-enhanced-consumers-api.html Enhanced Fan-Out Using the Kinesis Data Streams API>.
newSubscribeToShardEventStream ::
  -- | 'subscribeToShardEvent'
  SubscribeToShardEvent ->
  SubscribeToShardEventStream
newSubscribeToShardEventStream
  pSubscribeToShardEvent_ =
    SubscribeToShardEventStream'
      { kMSThrottlingException =
          Prelude.Nothing,
        kMSInvalidStateException = Prelude.Nothing,
        kMSNotFoundException = Prelude.Nothing,
        kMSOptInRequired = Prelude.Nothing,
        resourceInUseException = Prelude.Nothing,
        kMSAccessDeniedException = Prelude.Nothing,
        resourceNotFoundException = Prelude.Nothing,
        internalFailureException = Prelude.Nothing,
        kMSDisabledException = Prelude.Nothing,
        subscribeToShardEvent =
          pSubscribeToShardEvent_
      }

-- | Undocumented member.
subscribeToShardEventStream_kMSThrottlingException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe KMSThrottlingException)
subscribeToShardEventStream_kMSThrottlingException = Lens.lens (\SubscribeToShardEventStream' {kMSThrottlingException} -> kMSThrottlingException) (\s@SubscribeToShardEventStream' {} a -> s {kMSThrottlingException = a} :: SubscribeToShardEventStream)

-- | Undocumented member.
subscribeToShardEventStream_kMSInvalidStateException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe KMSInvalidStateException)
subscribeToShardEventStream_kMSInvalidStateException = Lens.lens (\SubscribeToShardEventStream' {kMSInvalidStateException} -> kMSInvalidStateException) (\s@SubscribeToShardEventStream' {} a -> s {kMSInvalidStateException = a} :: SubscribeToShardEventStream)

-- | Undocumented member.
subscribeToShardEventStream_kMSNotFoundException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe KMSNotFoundException)
subscribeToShardEventStream_kMSNotFoundException = Lens.lens (\SubscribeToShardEventStream' {kMSNotFoundException} -> kMSNotFoundException) (\s@SubscribeToShardEventStream' {} a -> s {kMSNotFoundException = a} :: SubscribeToShardEventStream)

-- | Undocumented member.
subscribeToShardEventStream_kMSOptInRequired :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe KMSOptInRequired)
subscribeToShardEventStream_kMSOptInRequired = Lens.lens (\SubscribeToShardEventStream' {kMSOptInRequired} -> kMSOptInRequired) (\s@SubscribeToShardEventStream' {} a -> s {kMSOptInRequired = a} :: SubscribeToShardEventStream)

-- | Undocumented member.
subscribeToShardEventStream_resourceInUseException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe ResourceInUseException)
subscribeToShardEventStream_resourceInUseException = Lens.lens (\SubscribeToShardEventStream' {resourceInUseException} -> resourceInUseException) (\s@SubscribeToShardEventStream' {} a -> s {resourceInUseException = a} :: SubscribeToShardEventStream)

-- | Undocumented member.
subscribeToShardEventStream_kMSAccessDeniedException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe KMSAccessDeniedException)
subscribeToShardEventStream_kMSAccessDeniedException = Lens.lens (\SubscribeToShardEventStream' {kMSAccessDeniedException} -> kMSAccessDeniedException) (\s@SubscribeToShardEventStream' {} a -> s {kMSAccessDeniedException = a} :: SubscribeToShardEventStream)

-- | Undocumented member.
subscribeToShardEventStream_resourceNotFoundException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe ResourceNotFoundException)
subscribeToShardEventStream_resourceNotFoundException = Lens.lens (\SubscribeToShardEventStream' {resourceNotFoundException} -> resourceNotFoundException) (\s@SubscribeToShardEventStream' {} a -> s {resourceNotFoundException = a} :: SubscribeToShardEventStream)

-- | The processing of the request failed because of an unknown error,
-- exception, or failure.
subscribeToShardEventStream_internalFailureException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe InternalFailureException)
subscribeToShardEventStream_internalFailureException = Lens.lens (\SubscribeToShardEventStream' {internalFailureException} -> internalFailureException) (\s@SubscribeToShardEventStream' {} a -> s {internalFailureException = a} :: SubscribeToShardEventStream)

-- | Undocumented member.
subscribeToShardEventStream_kMSDisabledException :: Lens.Lens' SubscribeToShardEventStream (Prelude.Maybe KMSDisabledException)
subscribeToShardEventStream_kMSDisabledException = Lens.lens (\SubscribeToShardEventStream' {kMSDisabledException} -> kMSDisabledException) (\s@SubscribeToShardEventStream' {} a -> s {kMSDisabledException = a} :: SubscribeToShardEventStream)

-- | After you call SubscribeToShard, Kinesis Data Streams sends events of
-- this type to your consumer. For an example of how to handle these
-- events, see
-- </streams/latest/dev/building-enhanced-consumers-api.html Enhanced Fan-Out Using the Kinesis Data Streams API>.
subscribeToShardEventStream_subscribeToShardEvent :: Lens.Lens' SubscribeToShardEventStream SubscribeToShardEvent
subscribeToShardEventStream_subscribeToShardEvent = Lens.lens (\SubscribeToShardEventStream' {subscribeToShardEvent} -> subscribeToShardEvent) (\s@SubscribeToShardEventStream' {} a -> s {subscribeToShardEvent = a} :: SubscribeToShardEventStream)

instance Prelude.FromJSON SubscribeToShardEventStream where
  parseJSON =
    Prelude.withObject
      "SubscribeToShardEventStream"
      ( \x ->
          SubscribeToShardEventStream'
            Prelude.<$> (x Prelude..:? "KMSThrottlingException")
            Prelude.<*> (x Prelude..:? "KMSInvalidStateException")
            Prelude.<*> (x Prelude..:? "KMSNotFoundException")
            Prelude.<*> (x Prelude..:? "KMSOptInRequired")
            Prelude.<*> (x Prelude..:? "ResourceInUseException")
            Prelude.<*> (x Prelude..:? "KMSAccessDeniedException")
            Prelude.<*> (x Prelude..:? "ResourceNotFoundException")
            Prelude.<*> (x Prelude..:? "InternalFailureException")
            Prelude.<*> (x Prelude..:? "KMSDisabledException")
            Prelude.<*> (x Prelude..: "SubscribeToShardEvent")
      )

instance Prelude.Hashable SubscribeToShardEventStream

instance Prelude.NFData SubscribeToShardEventStream
