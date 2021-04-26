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
-- Module      : Network.AWS.SQS.Types.QueueAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.QueueAttributeName
  ( QueueAttributeName
      ( ..,
        QueueAttributeNameAll,
        QueueAttributeNameApproximateNumberOfMessages,
        QueueAttributeNameApproximateNumberOfMessagesDelayed,
        QueueAttributeNameApproximateNumberOfMessagesNotVisible,
        QueueAttributeNameContentBasedDeduplication,
        QueueAttributeNameCreatedTimestamp,
        QueueAttributeNameDeduplicationScope,
        QueueAttributeNameDelaySeconds,
        QueueAttributeNameFifoQueue,
        QueueAttributeNameFifoThroughputLimit,
        QueueAttributeNameKmsDataKeyReusePeriodSeconds,
        QueueAttributeNameKmsMasterKeyId,
        QueueAttributeNameLastModifiedTimestamp,
        QueueAttributeNameMaximumMessageSize,
        QueueAttributeNameMessageRetentionPeriod,
        QueueAttributeNamePolicy,
        QueueAttributeNameQueueArn,
        QueueAttributeNameReceiveMessageWaitTimeSeconds,
        QueueAttributeNameRedrivePolicy,
        QueueAttributeNameVisibilityTimeout
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueueAttributeName = QueueAttributeName'
  { fromQueueAttributeName ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern QueueAttributeNameAll :: QueueAttributeName
pattern QueueAttributeNameAll = QueueAttributeName' "All"

pattern QueueAttributeNameApproximateNumberOfMessages :: QueueAttributeName
pattern QueueAttributeNameApproximateNumberOfMessages = QueueAttributeName' "ApproximateNumberOfMessages"

pattern QueueAttributeNameApproximateNumberOfMessagesDelayed :: QueueAttributeName
pattern QueueAttributeNameApproximateNumberOfMessagesDelayed = QueueAttributeName' "ApproximateNumberOfMessagesDelayed"

pattern QueueAttributeNameApproximateNumberOfMessagesNotVisible :: QueueAttributeName
pattern QueueAttributeNameApproximateNumberOfMessagesNotVisible = QueueAttributeName' "ApproximateNumberOfMessagesNotVisible"

pattern QueueAttributeNameContentBasedDeduplication :: QueueAttributeName
pattern QueueAttributeNameContentBasedDeduplication = QueueAttributeName' "ContentBasedDeduplication"

pattern QueueAttributeNameCreatedTimestamp :: QueueAttributeName
pattern QueueAttributeNameCreatedTimestamp = QueueAttributeName' "CreatedTimestamp"

pattern QueueAttributeNameDeduplicationScope :: QueueAttributeName
pattern QueueAttributeNameDeduplicationScope = QueueAttributeName' "DeduplicationScope"

pattern QueueAttributeNameDelaySeconds :: QueueAttributeName
pattern QueueAttributeNameDelaySeconds = QueueAttributeName' "DelaySeconds"

pattern QueueAttributeNameFifoQueue :: QueueAttributeName
pattern QueueAttributeNameFifoQueue = QueueAttributeName' "FifoQueue"

pattern QueueAttributeNameFifoThroughputLimit :: QueueAttributeName
pattern QueueAttributeNameFifoThroughputLimit = QueueAttributeName' "FifoThroughputLimit"

pattern QueueAttributeNameKmsDataKeyReusePeriodSeconds :: QueueAttributeName
pattern QueueAttributeNameKmsDataKeyReusePeriodSeconds = QueueAttributeName' "KmsDataKeyReusePeriodSeconds"

pattern QueueAttributeNameKmsMasterKeyId :: QueueAttributeName
pattern QueueAttributeNameKmsMasterKeyId = QueueAttributeName' "KmsMasterKeyId"

pattern QueueAttributeNameLastModifiedTimestamp :: QueueAttributeName
pattern QueueAttributeNameLastModifiedTimestamp = QueueAttributeName' "LastModifiedTimestamp"

pattern QueueAttributeNameMaximumMessageSize :: QueueAttributeName
pattern QueueAttributeNameMaximumMessageSize = QueueAttributeName' "MaximumMessageSize"

pattern QueueAttributeNameMessageRetentionPeriod :: QueueAttributeName
pattern QueueAttributeNameMessageRetentionPeriod = QueueAttributeName' "MessageRetentionPeriod"

pattern QueueAttributeNamePolicy :: QueueAttributeName
pattern QueueAttributeNamePolicy = QueueAttributeName' "Policy"

pattern QueueAttributeNameQueueArn :: QueueAttributeName
pattern QueueAttributeNameQueueArn = QueueAttributeName' "QueueArn"

pattern QueueAttributeNameReceiveMessageWaitTimeSeconds :: QueueAttributeName
pattern QueueAttributeNameReceiveMessageWaitTimeSeconds = QueueAttributeName' "ReceiveMessageWaitTimeSeconds"

pattern QueueAttributeNameRedrivePolicy :: QueueAttributeName
pattern QueueAttributeNameRedrivePolicy = QueueAttributeName' "RedrivePolicy"

pattern QueueAttributeNameVisibilityTimeout :: QueueAttributeName
pattern QueueAttributeNameVisibilityTimeout = QueueAttributeName' "VisibilityTimeout"

{-# COMPLETE
  QueueAttributeNameAll,
  QueueAttributeNameApproximateNumberOfMessages,
  QueueAttributeNameApproximateNumberOfMessagesDelayed,
  QueueAttributeNameApproximateNumberOfMessagesNotVisible,
  QueueAttributeNameContentBasedDeduplication,
  QueueAttributeNameCreatedTimestamp,
  QueueAttributeNameDeduplicationScope,
  QueueAttributeNameDelaySeconds,
  QueueAttributeNameFifoQueue,
  QueueAttributeNameFifoThroughputLimit,
  QueueAttributeNameKmsDataKeyReusePeriodSeconds,
  QueueAttributeNameKmsMasterKeyId,
  QueueAttributeNameLastModifiedTimestamp,
  QueueAttributeNameMaximumMessageSize,
  QueueAttributeNameMessageRetentionPeriod,
  QueueAttributeNamePolicy,
  QueueAttributeNameQueueArn,
  QueueAttributeNameReceiveMessageWaitTimeSeconds,
  QueueAttributeNameRedrivePolicy,
  QueueAttributeNameVisibilityTimeout,
  QueueAttributeName'
  #-}

instance Prelude.FromText QueueAttributeName where
  parser = QueueAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueueAttributeName where
  toText (QueueAttributeName' x) = x

instance Prelude.Hashable QueueAttributeName

instance Prelude.NFData QueueAttributeName

instance Prelude.ToByteString QueueAttributeName

instance Prelude.ToQuery QueueAttributeName

instance Prelude.ToHeader QueueAttributeName

instance Prelude.FromXML QueueAttributeName where
  parseXML = Prelude.parseXMLText "QueueAttributeName"
