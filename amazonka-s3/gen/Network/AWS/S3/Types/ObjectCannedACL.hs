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
-- Module      : Network.AWS.S3.Types.ObjectCannedACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectCannedACL
  ( ObjectCannedACL
      ( ..,
        ObjectCannedACLAuthenticatedRead,
        ObjectCannedACLAwsExecRead,
        ObjectCannedACLBucketOwnerFullControl,
        ObjectCannedACLBucketOwnerRead,
        ObjectCannedACLPrivate,
        ObjectCannedACLPublicRead,
        ObjectCannedACLPublicReadWrite
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ObjectCannedACL = ObjectCannedACL'
  { fromObjectCannedACL ::
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

pattern ObjectCannedACLAuthenticatedRead :: ObjectCannedACL
pattern ObjectCannedACLAuthenticatedRead = ObjectCannedACL' "authenticated-read"

pattern ObjectCannedACLAwsExecRead :: ObjectCannedACL
pattern ObjectCannedACLAwsExecRead = ObjectCannedACL' "aws-exec-read"

pattern ObjectCannedACLBucketOwnerFullControl :: ObjectCannedACL
pattern ObjectCannedACLBucketOwnerFullControl = ObjectCannedACL' "bucket-owner-full-control"

pattern ObjectCannedACLBucketOwnerRead :: ObjectCannedACL
pattern ObjectCannedACLBucketOwnerRead = ObjectCannedACL' "bucket-owner-read"

pattern ObjectCannedACLPrivate :: ObjectCannedACL
pattern ObjectCannedACLPrivate = ObjectCannedACL' "private"

pattern ObjectCannedACLPublicRead :: ObjectCannedACL
pattern ObjectCannedACLPublicRead = ObjectCannedACL' "public-read"

pattern ObjectCannedACLPublicReadWrite :: ObjectCannedACL
pattern ObjectCannedACLPublicReadWrite = ObjectCannedACL' "public-read-write"

{-# COMPLETE
  ObjectCannedACLAuthenticatedRead,
  ObjectCannedACLAwsExecRead,
  ObjectCannedACLBucketOwnerFullControl,
  ObjectCannedACLBucketOwnerRead,
  ObjectCannedACLPrivate,
  ObjectCannedACLPublicRead,
  ObjectCannedACLPublicReadWrite,
  ObjectCannedACL'
  #-}

instance Prelude.FromText ObjectCannedACL where
  parser = ObjectCannedACL' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectCannedACL where
  toText (ObjectCannedACL' x) = x

instance Prelude.Hashable ObjectCannedACL

instance Prelude.NFData ObjectCannedACL

instance Prelude.ToByteString ObjectCannedACL

instance Prelude.ToQuery ObjectCannedACL

instance Prelude.ToHeader ObjectCannedACL

instance Prelude.ToXML ObjectCannedACL where
  toXML = Prelude.toXMLText
