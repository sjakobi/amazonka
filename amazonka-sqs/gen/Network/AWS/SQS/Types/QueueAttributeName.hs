{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        QANAll,
        QANApproximateNumberOfMessages,
        QANApproximateNumberOfMessagesDelayed,
        QANApproximateNumberOfMessagesNotVisible,
        QANContentBasedDeduplication,
        QANCreatedTimestamp,
        QANDeduplicationScope,
        QANDelaySeconds,
        QANFifoQueue,
        QANFifoThroughputLimit,
        QANKMSDataKeyReusePeriodSeconds,
        QANKMSMasterKeyId,
        QANLastModifiedTimestamp,
        QANMaximumMessageSize,
        QANMessageRetentionPeriod,
        QANPolicy,
        QANQueueARN,
        QANReceiveMessageWaitTimeSeconds,
        QANRedrivePolicy,
        QANVisibilityTimeout
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueueAttributeName
  = QueueAttributeName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern QANAll :: QueueAttributeName
pattern QANAll = QueueAttributeName' "All"

pattern QANApproximateNumberOfMessages :: QueueAttributeName
pattern QANApproximateNumberOfMessages = QueueAttributeName' "ApproximateNumberOfMessages"

pattern QANApproximateNumberOfMessagesDelayed :: QueueAttributeName
pattern QANApproximateNumberOfMessagesDelayed = QueueAttributeName' "ApproximateNumberOfMessagesDelayed"

pattern QANApproximateNumberOfMessagesNotVisible :: QueueAttributeName
pattern QANApproximateNumberOfMessagesNotVisible = QueueAttributeName' "ApproximateNumberOfMessagesNotVisible"

pattern QANContentBasedDeduplication :: QueueAttributeName
pattern QANContentBasedDeduplication = QueueAttributeName' "ContentBasedDeduplication"

pattern QANCreatedTimestamp :: QueueAttributeName
pattern QANCreatedTimestamp = QueueAttributeName' "CreatedTimestamp"

pattern QANDeduplicationScope :: QueueAttributeName
pattern QANDeduplicationScope = QueueAttributeName' "DeduplicationScope"

pattern QANDelaySeconds :: QueueAttributeName
pattern QANDelaySeconds = QueueAttributeName' "DelaySeconds"

pattern QANFifoQueue :: QueueAttributeName
pattern QANFifoQueue = QueueAttributeName' "FifoQueue"

pattern QANFifoThroughputLimit :: QueueAttributeName
pattern QANFifoThroughputLimit = QueueAttributeName' "FifoThroughputLimit"

pattern QANKMSDataKeyReusePeriodSeconds :: QueueAttributeName
pattern QANKMSDataKeyReusePeriodSeconds = QueueAttributeName' "KmsDataKeyReusePeriodSeconds"

pattern QANKMSMasterKeyId :: QueueAttributeName
pattern QANKMSMasterKeyId = QueueAttributeName' "KmsMasterKeyId"

pattern QANLastModifiedTimestamp :: QueueAttributeName
pattern QANLastModifiedTimestamp = QueueAttributeName' "LastModifiedTimestamp"

pattern QANMaximumMessageSize :: QueueAttributeName
pattern QANMaximumMessageSize = QueueAttributeName' "MaximumMessageSize"

pattern QANMessageRetentionPeriod :: QueueAttributeName
pattern QANMessageRetentionPeriod = QueueAttributeName' "MessageRetentionPeriod"

pattern QANPolicy :: QueueAttributeName
pattern QANPolicy = QueueAttributeName' "Policy"

pattern QANQueueARN :: QueueAttributeName
pattern QANQueueARN = QueueAttributeName' "QueueArn"

pattern QANReceiveMessageWaitTimeSeconds :: QueueAttributeName
pattern QANReceiveMessageWaitTimeSeconds = QueueAttributeName' "ReceiveMessageWaitTimeSeconds"

pattern QANRedrivePolicy :: QueueAttributeName
pattern QANRedrivePolicy = QueueAttributeName' "RedrivePolicy"

pattern QANVisibilityTimeout :: QueueAttributeName
pattern QANVisibilityTimeout = QueueAttributeName' "VisibilityTimeout"

{-# COMPLETE
  QANAll,
  QANApproximateNumberOfMessages,
  QANApproximateNumberOfMessagesDelayed,
  QANApproximateNumberOfMessagesNotVisible,
  QANContentBasedDeduplication,
  QANCreatedTimestamp,
  QANDeduplicationScope,
  QANDelaySeconds,
  QANFifoQueue,
  QANFifoThroughputLimit,
  QANKMSDataKeyReusePeriodSeconds,
  QANKMSMasterKeyId,
  QANLastModifiedTimestamp,
  QANMaximumMessageSize,
  QANMessageRetentionPeriod,
  QANPolicy,
  QANQueueARN,
  QANReceiveMessageWaitTimeSeconds,
  QANRedrivePolicy,
  QANVisibilityTimeout,
  QueueAttributeName'
  #-}

instance FromText QueueAttributeName where
  parser = (QueueAttributeName' . mk) <$> takeText

instance ToText QueueAttributeName where
  toText (QueueAttributeName' ci) = original ci

instance Hashable QueueAttributeName

instance NFData QueueAttributeName

instance ToByteString QueueAttributeName

instance ToQuery QueueAttributeName

instance ToHeader QueueAttributeName

instance FromXML QueueAttributeName where
  parseXML = parseXMLText "QueueAttributeName"
