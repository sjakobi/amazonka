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
-- Module      : Network.AWS.Glacier.Types.CannedACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.CannedACL
  ( CannedACL
      ( ..,
        CannedACLAuthenticatedRead,
        CannedACLAwsExecRead,
        CannedACLBucketOwnerFullControl,
        CannedACLBucketOwnerRead,
        CannedACLPrivate,
        CannedACLPublicRead,
        CannedACLPublicReadWrite
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CannedACL = CannedACL'
  { fromCannedACL ::
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

pattern CannedACLAuthenticatedRead :: CannedACL
pattern CannedACLAuthenticatedRead = CannedACL' "authenticated-read"

pattern CannedACLAwsExecRead :: CannedACL
pattern CannedACLAwsExecRead = CannedACL' "aws-exec-read"

pattern CannedACLBucketOwnerFullControl :: CannedACL
pattern CannedACLBucketOwnerFullControl = CannedACL' "bucket-owner-full-control"

pattern CannedACLBucketOwnerRead :: CannedACL
pattern CannedACLBucketOwnerRead = CannedACL' "bucket-owner-read"

pattern CannedACLPrivate :: CannedACL
pattern CannedACLPrivate = CannedACL' "private"

pattern CannedACLPublicRead :: CannedACL
pattern CannedACLPublicRead = CannedACL' "public-read"

pattern CannedACLPublicReadWrite :: CannedACL
pattern CannedACLPublicReadWrite = CannedACL' "public-read-write"

{-# COMPLETE
  CannedACLAuthenticatedRead,
  CannedACLAwsExecRead,
  CannedACLBucketOwnerFullControl,
  CannedACLBucketOwnerRead,
  CannedACLPrivate,
  CannedACLPublicRead,
  CannedACLPublicReadWrite,
  CannedACL'
  #-}

instance Prelude.FromText CannedACL where
  parser = CannedACL' Prelude.<$> Prelude.takeText

instance Prelude.ToText CannedACL where
  toText (CannedACL' x) = x

instance Prelude.Hashable CannedACL

instance Prelude.NFData CannedACL

instance Prelude.ToByteString CannedACL

instance Prelude.ToQuery CannedACL

instance Prelude.ToHeader CannedACL

instance Prelude.ToJSON CannedACL where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CannedACL where
  parseJSON = Prelude.parseJSONText "CannedACL"
