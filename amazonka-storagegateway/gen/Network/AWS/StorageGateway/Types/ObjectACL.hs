{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AWSExecRead,
        AuthenticatedRead,
        BucketOwnerFullControl,
        BucketOwnerRead,
        Private,
        PublicRead,
        PublicReadWrite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | A value that sets the access control list (ACL) permission for objects in the S3 bucket that a file gateway puts objects into. The default value is @private@ .
data ObjectACL = ObjectACL' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSExecRead :: ObjectACL
pattern AWSExecRead = ObjectACL' "aws-exec-read"

pattern AuthenticatedRead :: ObjectACL
pattern AuthenticatedRead = ObjectACL' "authenticated-read"

pattern BucketOwnerFullControl :: ObjectACL
pattern BucketOwnerFullControl = ObjectACL' "bucket-owner-full-control"

pattern BucketOwnerRead :: ObjectACL
pattern BucketOwnerRead = ObjectACL' "bucket-owner-read"

pattern Private :: ObjectACL
pattern Private = ObjectACL' "private"

pattern PublicRead :: ObjectACL
pattern PublicRead = ObjectACL' "public-read"

pattern PublicReadWrite :: ObjectACL
pattern PublicReadWrite = ObjectACL' "public-read-write"

{-# COMPLETE
  AWSExecRead,
  AuthenticatedRead,
  BucketOwnerFullControl,
  BucketOwnerRead,
  Private,
  PublicRead,
  PublicReadWrite,
  ObjectACL'
  #-}

instance FromText ObjectACL where
  parser = (ObjectACL' . mk) <$> takeText

instance ToText ObjectACL where
  toText (ObjectACL' ci) = original ci

instance Hashable ObjectACL

instance NFData ObjectACL

instance ToByteString ObjectACL

instance ToQuery ObjectACL

instance ToHeader ObjectACL

instance ToJSON ObjectACL where
  toJSON = toJSONText

instance FromJSON ObjectACL where
  parseJSON = parseJSONText "ObjectACL"
