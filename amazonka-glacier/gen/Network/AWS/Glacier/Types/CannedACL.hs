{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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

data CannedACL = CannedACL' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSExecRead :: CannedACL
pattern AWSExecRead = CannedACL' "aws-exec-read"

pattern AuthenticatedRead :: CannedACL
pattern AuthenticatedRead = CannedACL' "authenticated-read"

pattern BucketOwnerFullControl :: CannedACL
pattern BucketOwnerFullControl = CannedACL' "bucket-owner-full-control"

pattern BucketOwnerRead :: CannedACL
pattern BucketOwnerRead = CannedACL' "bucket-owner-read"

pattern Private :: CannedACL
pattern Private = CannedACL' "private"

pattern PublicRead :: CannedACL
pattern PublicRead = CannedACL' "public-read"

pattern PublicReadWrite :: CannedACL
pattern PublicReadWrite = CannedACL' "public-read-write"

{-# COMPLETE
  AWSExecRead,
  AuthenticatedRead,
  BucketOwnerFullControl,
  BucketOwnerRead,
  Private,
  PublicRead,
  PublicReadWrite,
  CannedACL'
  #-}

instance FromText CannedACL where
  parser = (CannedACL' . mk) <$> takeText

instance ToText CannedACL where
  toText (CannedACL' ci) = original ci

instance Hashable CannedACL

instance NFData CannedACL

instance ToByteString CannedACL

instance ToQuery CannedACL

instance ToHeader CannedACL

instance ToJSON CannedACL where
  toJSON = toJSONText

instance FromJSON CannedACL where
  parseJSON = parseJSONText "CannedACL"
