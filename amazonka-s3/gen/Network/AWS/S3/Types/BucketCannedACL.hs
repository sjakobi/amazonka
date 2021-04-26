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
-- Module      : Network.AWS.S3.Types.BucketCannedACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.BucketCannedACL
  ( BucketCannedACL
      ( ..,
        BucketCannedACLBAuthenticatedRead,
        BucketCannedACLBPrivate,
        BucketCannedACLBPublicRead,
        BucketCannedACLBPublicReadWrite
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype BucketCannedACL = BucketCannedACL'
  { fromBucketCannedACL ::
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

pattern BucketCannedACLBAuthenticatedRead :: BucketCannedACL
pattern BucketCannedACLBAuthenticatedRead = BucketCannedACL' "authenticated-read"

pattern BucketCannedACLBPrivate :: BucketCannedACL
pattern BucketCannedACLBPrivate = BucketCannedACL' "private"

pattern BucketCannedACLBPublicRead :: BucketCannedACL
pattern BucketCannedACLBPublicRead = BucketCannedACL' "public-read"

pattern BucketCannedACLBPublicReadWrite :: BucketCannedACL
pattern BucketCannedACLBPublicReadWrite = BucketCannedACL' "public-read-write"

{-# COMPLETE
  BucketCannedACLBAuthenticatedRead,
  BucketCannedACLBPrivate,
  BucketCannedACLBPublicRead,
  BucketCannedACLBPublicReadWrite,
  BucketCannedACL'
  #-}

instance Prelude.FromText BucketCannedACL where
  parser = BucketCannedACL' Prelude.<$> Prelude.takeText

instance Prelude.ToText BucketCannedACL where
  toText (BucketCannedACL' x) = x

instance Prelude.Hashable BucketCannedACL

instance Prelude.NFData BucketCannedACL

instance Prelude.ToByteString BucketCannedACL

instance Prelude.ToQuery BucketCannedACL

instance Prelude.ToHeader BucketCannedACL

instance Prelude.ToXML BucketCannedACL where
  toXML = Prelude.toXMLText
