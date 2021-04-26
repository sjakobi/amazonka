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
-- Module      : Network.AWS.S3.Types.BucketLogsPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.BucketLogsPermission
  ( BucketLogsPermission
      ( ..,
        BucketLogsPermissionFULLCONTROL,
        BucketLogsPermissionREAD,
        BucketLogsPermissionWRITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype BucketLogsPermission = BucketLogsPermission'
  { fromBucketLogsPermission ::
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

pattern BucketLogsPermissionFULLCONTROL :: BucketLogsPermission
pattern BucketLogsPermissionFULLCONTROL = BucketLogsPermission' "FULL_CONTROL"

pattern BucketLogsPermissionREAD :: BucketLogsPermission
pattern BucketLogsPermissionREAD = BucketLogsPermission' "READ"

pattern BucketLogsPermissionWRITE :: BucketLogsPermission
pattern BucketLogsPermissionWRITE = BucketLogsPermission' "WRITE"

{-# COMPLETE
  BucketLogsPermissionFULLCONTROL,
  BucketLogsPermissionREAD,
  BucketLogsPermissionWRITE,
  BucketLogsPermission'
  #-}

instance Prelude.FromText BucketLogsPermission where
  parser = BucketLogsPermission' Prelude.<$> Prelude.takeText

instance Prelude.ToText BucketLogsPermission where
  toText (BucketLogsPermission' x) = x

instance Prelude.Hashable BucketLogsPermission

instance Prelude.NFData BucketLogsPermission

instance Prelude.ToByteString BucketLogsPermission

instance Prelude.ToQuery BucketLogsPermission

instance Prelude.ToHeader BucketLogsPermission

instance Prelude.FromXML BucketLogsPermission where
  parseXML = Prelude.parseXMLText "BucketLogsPermission"

instance Prelude.ToXML BucketLogsPermission where
  toXML = Prelude.toXMLText
