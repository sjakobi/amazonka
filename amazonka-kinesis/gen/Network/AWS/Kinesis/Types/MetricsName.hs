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
-- Module      : Network.AWS.Kinesis.Types.MetricsName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.MetricsName
  ( MetricsName
      ( ..,
        MetricsNameALL,
        MetricsNameIncomingBytes,
        MetricsNameIncomingRecords,
        MetricsNameIteratorAgeMilliseconds,
        MetricsNameOutgoingBytes,
        MetricsNameOutgoingRecords,
        MetricsNameReadProvisionedThroughputExceeded,
        MetricsNameWriteProvisionedThroughputExceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MetricsName = MetricsName'
  { fromMetricsName ::
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

pattern MetricsNameALL :: MetricsName
pattern MetricsNameALL = MetricsName' "ALL"

pattern MetricsNameIncomingBytes :: MetricsName
pattern MetricsNameIncomingBytes = MetricsName' "IncomingBytes"

pattern MetricsNameIncomingRecords :: MetricsName
pattern MetricsNameIncomingRecords = MetricsName' "IncomingRecords"

pattern MetricsNameIteratorAgeMilliseconds :: MetricsName
pattern MetricsNameIteratorAgeMilliseconds = MetricsName' "IteratorAgeMilliseconds"

pattern MetricsNameOutgoingBytes :: MetricsName
pattern MetricsNameOutgoingBytes = MetricsName' "OutgoingBytes"

pattern MetricsNameOutgoingRecords :: MetricsName
pattern MetricsNameOutgoingRecords = MetricsName' "OutgoingRecords"

pattern MetricsNameReadProvisionedThroughputExceeded :: MetricsName
pattern MetricsNameReadProvisionedThroughputExceeded = MetricsName' "ReadProvisionedThroughputExceeded"

pattern MetricsNameWriteProvisionedThroughputExceeded :: MetricsName
pattern MetricsNameWriteProvisionedThroughputExceeded = MetricsName' "WriteProvisionedThroughputExceeded"

{-# COMPLETE
  MetricsNameALL,
  MetricsNameIncomingBytes,
  MetricsNameIncomingRecords,
  MetricsNameIteratorAgeMilliseconds,
  MetricsNameOutgoingBytes,
  MetricsNameOutgoingRecords,
  MetricsNameReadProvisionedThroughputExceeded,
  MetricsNameWriteProvisionedThroughputExceeded,
  MetricsName'
  #-}

instance Prelude.FromText MetricsName where
  parser = MetricsName' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricsName where
  toText (MetricsName' x) = x

instance Prelude.Hashable MetricsName

instance Prelude.NFData MetricsName

instance Prelude.ToByteString MetricsName

instance Prelude.ToQuery MetricsName

instance Prelude.ToHeader MetricsName

instance Prelude.ToJSON MetricsName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MetricsName where
  parseJSON = Prelude.parseJSONText "MetricsName"
