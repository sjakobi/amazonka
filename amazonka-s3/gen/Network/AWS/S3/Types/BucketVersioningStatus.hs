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
-- Module      : Network.AWS.S3.Types.BucketVersioningStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.BucketVersioningStatus
  ( BucketVersioningStatus
      ( ..,
        BucketVersioningStatusEnabled,
        BucketVersioningStatusSuspended
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype BucketVersioningStatus = BucketVersioningStatus'
  { fromBucketVersioningStatus ::
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

pattern BucketVersioningStatusEnabled :: BucketVersioningStatus
pattern BucketVersioningStatusEnabled = BucketVersioningStatus' "Enabled"

pattern BucketVersioningStatusSuspended :: BucketVersioningStatus
pattern BucketVersioningStatusSuspended = BucketVersioningStatus' "Suspended"

{-# COMPLETE
  BucketVersioningStatusEnabled,
  BucketVersioningStatusSuspended,
  BucketVersioningStatus'
  #-}

instance Prelude.FromText BucketVersioningStatus where
  parser = BucketVersioningStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BucketVersioningStatus where
  toText (BucketVersioningStatus' x) = x

instance Prelude.Hashable BucketVersioningStatus

instance Prelude.NFData BucketVersioningStatus

instance Prelude.ToByteString BucketVersioningStatus

instance Prelude.ToQuery BucketVersioningStatus

instance Prelude.ToHeader BucketVersioningStatus

instance Prelude.FromXML BucketVersioningStatus where
  parseXML = Prelude.parseXMLText "BucketVersioningStatus"

instance Prelude.ToXML BucketVersioningStatus where
  toXML = Prelude.toXMLText
