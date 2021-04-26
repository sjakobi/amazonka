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
-- Module      : Network.AWS.S3.Types.BucketAccelerateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.BucketAccelerateStatus
  ( BucketAccelerateStatus
      ( ..,
        BucketAccelerateStatusEnabled,
        BucketAccelerateStatusSuspended
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype BucketAccelerateStatus = BucketAccelerateStatus'
  { fromBucketAccelerateStatus ::
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

pattern BucketAccelerateStatusEnabled :: BucketAccelerateStatus
pattern BucketAccelerateStatusEnabled = BucketAccelerateStatus' "Enabled"

pattern BucketAccelerateStatusSuspended :: BucketAccelerateStatus
pattern BucketAccelerateStatusSuspended = BucketAccelerateStatus' "Suspended"

{-# COMPLETE
  BucketAccelerateStatusEnabled,
  BucketAccelerateStatusSuspended,
  BucketAccelerateStatus'
  #-}

instance Prelude.FromText BucketAccelerateStatus where
  parser = BucketAccelerateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BucketAccelerateStatus where
  toText (BucketAccelerateStatus' x) = x

instance Prelude.Hashable BucketAccelerateStatus

instance Prelude.NFData BucketAccelerateStatus

instance Prelude.ToByteString BucketAccelerateStatus

instance Prelude.ToQuery BucketAccelerateStatus

instance Prelude.ToHeader BucketAccelerateStatus

instance Prelude.FromXML BucketAccelerateStatus where
  parseXML = Prelude.parseXMLText "BucketAccelerateStatus"

instance Prelude.ToXML BucketAccelerateStatus where
  toXML = Prelude.toXMLText
