{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Event
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Event
  ( Event
      ( ..,
        EventS3ObjectCreated,
        EventS3ObjectCreatedCompleteMultipartUpload,
        EventS3ObjectCreatedCopy,
        EventS3ObjectCreatedPost,
        EventS3ObjectCreatedPut,
        EventS3ObjectRemoved,
        EventS3ObjectRemovedDelete,
        EventS3ObjectRemovedDeleteMarkerCreated,
        EventS3ObjectRestore,
        EventS3ObjectRestoreCompleted,
        EventS3ObjectRestorePost,
        EventS3ReducedRedundancyLostObject,
        EventS3Replication,
        EventS3ReplicationOperationFailedReplication,
        EventS3ReplicationOperationMissedThreshold,
        EventS3ReplicationOperationNotTracked,
        EventS3ReplicationOperationReplicatedAfterThreshold
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

-- | The bucket event for which to send notifications.
newtype Event = Event' {fromEvent :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern EventS3ObjectCreated :: Event
pattern EventS3ObjectCreated = Event' "s3:ObjectCreated:*"

pattern EventS3ObjectCreatedCompleteMultipartUpload :: Event
pattern EventS3ObjectCreatedCompleteMultipartUpload = Event' "s3:ObjectCreated:CompleteMultipartUpload"

pattern EventS3ObjectCreatedCopy :: Event
pattern EventS3ObjectCreatedCopy = Event' "s3:ObjectCreated:Copy"

pattern EventS3ObjectCreatedPost :: Event
pattern EventS3ObjectCreatedPost = Event' "s3:ObjectCreated:Post"

pattern EventS3ObjectCreatedPut :: Event
pattern EventS3ObjectCreatedPut = Event' "s3:ObjectCreated:Put"

pattern EventS3ObjectRemoved :: Event
pattern EventS3ObjectRemoved = Event' "s3:ObjectRemoved:*"

pattern EventS3ObjectRemovedDelete :: Event
pattern EventS3ObjectRemovedDelete = Event' "s3:ObjectRemoved:Delete"

pattern EventS3ObjectRemovedDeleteMarkerCreated :: Event
pattern EventS3ObjectRemovedDeleteMarkerCreated = Event' "s3:ObjectRemoved:DeleteMarkerCreated"

pattern EventS3ObjectRestore :: Event
pattern EventS3ObjectRestore = Event' "s3:ObjectRestore:*"

pattern EventS3ObjectRestoreCompleted :: Event
pattern EventS3ObjectRestoreCompleted = Event' "s3:ObjectRestore:Completed"

pattern EventS3ObjectRestorePost :: Event
pattern EventS3ObjectRestorePost = Event' "s3:ObjectRestore:Post"

pattern EventS3ReducedRedundancyLostObject :: Event
pattern EventS3ReducedRedundancyLostObject = Event' "s3:ReducedRedundancyLostObject"

pattern EventS3Replication :: Event
pattern EventS3Replication = Event' "s3:Replication:*"

pattern EventS3ReplicationOperationFailedReplication :: Event
pattern EventS3ReplicationOperationFailedReplication = Event' "s3:Replication:OperationFailedReplication"

pattern EventS3ReplicationOperationMissedThreshold :: Event
pattern EventS3ReplicationOperationMissedThreshold = Event' "s3:Replication:OperationMissedThreshold"

pattern EventS3ReplicationOperationNotTracked :: Event
pattern EventS3ReplicationOperationNotTracked = Event' "s3:Replication:OperationNotTracked"

pattern EventS3ReplicationOperationReplicatedAfterThreshold :: Event
pattern EventS3ReplicationOperationReplicatedAfterThreshold = Event' "s3:Replication:OperationReplicatedAfterThreshold"

{-# COMPLETE
  EventS3ObjectCreated,
  EventS3ObjectCreatedCompleteMultipartUpload,
  EventS3ObjectCreatedCopy,
  EventS3ObjectCreatedPost,
  EventS3ObjectCreatedPut,
  EventS3ObjectRemoved,
  EventS3ObjectRemovedDelete,
  EventS3ObjectRemovedDeleteMarkerCreated,
  EventS3ObjectRestore,
  EventS3ObjectRestoreCompleted,
  EventS3ObjectRestorePost,
  EventS3ReducedRedundancyLostObject,
  EventS3Replication,
  EventS3ReplicationOperationFailedReplication,
  EventS3ReplicationOperationMissedThreshold,
  EventS3ReplicationOperationNotTracked,
  EventS3ReplicationOperationReplicatedAfterThreshold,
  Event'
  #-}

instance Prelude.FromText Event where
  parser = Event' Prelude.<$> Prelude.takeText

instance Prelude.ToText Event where
  toText (Event' x) = x

instance Prelude.Hashable Event

instance Prelude.NFData Event

instance Prelude.ToByteString Event

instance Prelude.ToQuery Event

instance Prelude.ToHeader Event

instance Prelude.FromXML Event where
  parseXML = Prelude.parseXMLText "Event"

instance Prelude.ToXML Event where
  toXML = Prelude.toXMLText
