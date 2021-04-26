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
        ObjectCannedACLOAuthenticatedRead,
        ObjectCannedACLOAwsExecRead,
        ObjectCannedACLOBucketOwnerFullControl,
        ObjectCannedACLOBucketOwnerRead,
        ObjectCannedACLOPrivate,
        ObjectCannedACLOPublicRead,
        ObjectCannedACLOPublicReadWrite
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

pattern ObjectCannedACLOAuthenticatedRead :: ObjectCannedACL
pattern ObjectCannedACLOAuthenticatedRead = ObjectCannedACL' "authenticated-read"

pattern ObjectCannedACLOAwsExecRead :: ObjectCannedACL
pattern ObjectCannedACLOAwsExecRead = ObjectCannedACL' "aws-exec-read"

pattern ObjectCannedACLOBucketOwnerFullControl :: ObjectCannedACL
pattern ObjectCannedACLOBucketOwnerFullControl = ObjectCannedACL' "bucket-owner-full-control"

pattern ObjectCannedACLOBucketOwnerRead :: ObjectCannedACL
pattern ObjectCannedACLOBucketOwnerRead = ObjectCannedACL' "bucket-owner-read"

pattern ObjectCannedACLOPrivate :: ObjectCannedACL
pattern ObjectCannedACLOPrivate = ObjectCannedACL' "private"

pattern ObjectCannedACLOPublicRead :: ObjectCannedACL
pattern ObjectCannedACLOPublicRead = ObjectCannedACL' "public-read"

pattern ObjectCannedACLOPublicReadWrite :: ObjectCannedACL
pattern ObjectCannedACLOPublicReadWrite = ObjectCannedACL' "public-read-write"

{-# COMPLETE
  ObjectCannedACLOAuthenticatedRead,
  ObjectCannedACLOAwsExecRead,
  ObjectCannedACLOBucketOwnerFullControl,
  ObjectCannedACLOBucketOwnerRead,
  ObjectCannedACLOPrivate,
  ObjectCannedACLOPublicRead,
  ObjectCannedACLOPublicReadWrite,
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
