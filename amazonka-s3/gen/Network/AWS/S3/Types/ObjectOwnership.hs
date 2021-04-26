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
-- Module      : Network.AWS.S3.Types.ObjectOwnership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectOwnership
  ( ObjectOwnership
      ( ..,
        ObjectOwnershipBucketOwnerPreferred,
        ObjectOwnershipObjectWriter
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

-- | The container element for object ownership for a bucket\'s ownership
-- controls.
--
-- BucketOwnerPreferred - Objects uploaded to the bucket change ownership
-- to the bucket owner if the objects are uploaded with the
-- @bucket-owner-full-control@ canned ACL.
--
-- ObjectWriter - The uploading account will own the object if the object
-- is uploaded with the @bucket-owner-full-control@ canned ACL.
newtype ObjectOwnership = ObjectOwnership'
  { fromObjectOwnership ::
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

pattern ObjectOwnershipBucketOwnerPreferred :: ObjectOwnership
pattern ObjectOwnershipBucketOwnerPreferred = ObjectOwnership' "BucketOwnerPreferred"

pattern ObjectOwnershipObjectWriter :: ObjectOwnership
pattern ObjectOwnershipObjectWriter = ObjectOwnership' "ObjectWriter"

{-# COMPLETE
  ObjectOwnershipBucketOwnerPreferred,
  ObjectOwnershipObjectWriter,
  ObjectOwnership'
  #-}

instance Prelude.FromText ObjectOwnership where
  parser = ObjectOwnership' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectOwnership where
  toText (ObjectOwnership' x) = x

instance Prelude.Hashable ObjectOwnership

instance Prelude.NFData ObjectOwnership

instance Prelude.ToByteString ObjectOwnership

instance Prelude.ToQuery ObjectOwnership

instance Prelude.ToHeader ObjectOwnership

instance Prelude.FromXML ObjectOwnership where
  parseXML = Prelude.parseXMLText "ObjectOwnership"

instance Prelude.ToXML ObjectOwnership where
  toXML = Prelude.toXMLText
