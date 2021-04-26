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
-- Module      : Network.AWS.IoT.Types.CannedAccessControlList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CannedAccessControlList
  ( CannedAccessControlList
      ( ..,
        CannedAccessControlListAuthenticatedRead,
        CannedAccessControlListAwsExecRead,
        CannedAccessControlListBucketOwnerFullControl,
        CannedAccessControlListBucketOwnerRead,
        CannedAccessControlListLogDeliveryWrite,
        CannedAccessControlListPrivate,
        CannedAccessControlListPublicRead,
        CannedAccessControlListPublicReadWrite
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CannedAccessControlList = CannedAccessControlList'
  { fromCannedAccessControlList ::
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

pattern CannedAccessControlListAuthenticatedRead :: CannedAccessControlList
pattern CannedAccessControlListAuthenticatedRead = CannedAccessControlList' "authenticated-read"

pattern CannedAccessControlListAwsExecRead :: CannedAccessControlList
pattern CannedAccessControlListAwsExecRead = CannedAccessControlList' "aws-exec-read"

pattern CannedAccessControlListBucketOwnerFullControl :: CannedAccessControlList
pattern CannedAccessControlListBucketOwnerFullControl = CannedAccessControlList' "bucket-owner-full-control"

pattern CannedAccessControlListBucketOwnerRead :: CannedAccessControlList
pattern CannedAccessControlListBucketOwnerRead = CannedAccessControlList' "bucket-owner-read"

pattern CannedAccessControlListLogDeliveryWrite :: CannedAccessControlList
pattern CannedAccessControlListLogDeliveryWrite = CannedAccessControlList' "log-delivery-write"

pattern CannedAccessControlListPrivate :: CannedAccessControlList
pattern CannedAccessControlListPrivate = CannedAccessControlList' "private"

pattern CannedAccessControlListPublicRead :: CannedAccessControlList
pattern CannedAccessControlListPublicRead = CannedAccessControlList' "public-read"

pattern CannedAccessControlListPublicReadWrite :: CannedAccessControlList
pattern CannedAccessControlListPublicReadWrite = CannedAccessControlList' "public-read-write"

{-# COMPLETE
  CannedAccessControlListAuthenticatedRead,
  CannedAccessControlListAwsExecRead,
  CannedAccessControlListBucketOwnerFullControl,
  CannedAccessControlListBucketOwnerRead,
  CannedAccessControlListLogDeliveryWrite,
  CannedAccessControlListPrivate,
  CannedAccessControlListPublicRead,
  CannedAccessControlListPublicReadWrite,
  CannedAccessControlList'
  #-}

instance Prelude.FromText CannedAccessControlList where
  parser = CannedAccessControlList' Prelude.<$> Prelude.takeText

instance Prelude.ToText CannedAccessControlList where
  toText (CannedAccessControlList' x) = x

instance Prelude.Hashable CannedAccessControlList

instance Prelude.NFData CannedAccessControlList

instance Prelude.ToByteString CannedAccessControlList

instance Prelude.ToQuery CannedAccessControlList

instance Prelude.ToHeader CannedAccessControlList

instance Prelude.ToJSON CannedAccessControlList where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CannedAccessControlList where
  parseJSON = Prelude.parseJSONText "CannedAccessControlList"
