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
-- Module      : Network.AWS.StorageGateway.Types.ObjectACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.ObjectACL
  ( ObjectACL
      ( ..,
        ObjectACLAuthenticatedRead,
        ObjectACLAwsExecRead,
        ObjectACLBucketOwnerFullControl,
        ObjectACLBucketOwnerRead,
        ObjectACLPrivate,
        ObjectACLPublicRead,
        ObjectACLPublicReadWrite
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A value that sets the access control list (ACL) permission for objects
-- in the S3 bucket that a file gateway puts objects into. The default
-- value is @private@.
newtype ObjectACL = ObjectACL'
  { fromObjectACL ::
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

pattern ObjectACLAuthenticatedRead :: ObjectACL
pattern ObjectACLAuthenticatedRead = ObjectACL' "authenticated-read"

pattern ObjectACLAwsExecRead :: ObjectACL
pattern ObjectACLAwsExecRead = ObjectACL' "aws-exec-read"

pattern ObjectACLBucketOwnerFullControl :: ObjectACL
pattern ObjectACLBucketOwnerFullControl = ObjectACL' "bucket-owner-full-control"

pattern ObjectACLBucketOwnerRead :: ObjectACL
pattern ObjectACLBucketOwnerRead = ObjectACL' "bucket-owner-read"

pattern ObjectACLPrivate :: ObjectACL
pattern ObjectACLPrivate = ObjectACL' "private"

pattern ObjectACLPublicRead :: ObjectACL
pattern ObjectACLPublicRead = ObjectACL' "public-read"

pattern ObjectACLPublicReadWrite :: ObjectACL
pattern ObjectACLPublicReadWrite = ObjectACL' "public-read-write"

{-# COMPLETE
  ObjectACLAuthenticatedRead,
  ObjectACLAwsExecRead,
  ObjectACLBucketOwnerFullControl,
  ObjectACLBucketOwnerRead,
  ObjectACLPrivate,
  ObjectACLPublicRead,
  ObjectACLPublicReadWrite,
  ObjectACL'
  #-}

instance Prelude.FromText ObjectACL where
  parser = ObjectACL' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectACL where
  toText (ObjectACL' x) = x

instance Prelude.Hashable ObjectACL

instance Prelude.NFData ObjectACL

instance Prelude.ToByteString ObjectACL

instance Prelude.ToQuery ObjectACL

instance Prelude.ToHeader ObjectACL

instance Prelude.ToJSON ObjectACL where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ObjectACL where
  parseJSON = Prelude.parseJSONText "ObjectACL"
