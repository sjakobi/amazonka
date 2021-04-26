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
-- Module      : Network.AWS.MediaConvert.Types.S3ObjectCannedAcl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.S3ObjectCannedAcl
  ( S3ObjectCannedAcl
      ( ..,
        S3ObjectCannedAclAUTHENTICATEDREAD,
        S3ObjectCannedAclBUCKETOWNERFULLCONTROL,
        S3ObjectCannedAclBUCKETOWNERREAD,
        S3ObjectCannedAclPUBLICREAD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.
newtype S3ObjectCannedAcl = S3ObjectCannedAcl'
  { fromS3ObjectCannedAcl ::
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

pattern S3ObjectCannedAclAUTHENTICATEDREAD :: S3ObjectCannedAcl
pattern S3ObjectCannedAclAUTHENTICATEDREAD = S3ObjectCannedAcl' "AUTHENTICATED_READ"

pattern S3ObjectCannedAclBUCKETOWNERFULLCONTROL :: S3ObjectCannedAcl
pattern S3ObjectCannedAclBUCKETOWNERFULLCONTROL = S3ObjectCannedAcl' "BUCKET_OWNER_FULL_CONTROL"

pattern S3ObjectCannedAclBUCKETOWNERREAD :: S3ObjectCannedAcl
pattern S3ObjectCannedAclBUCKETOWNERREAD = S3ObjectCannedAcl' "BUCKET_OWNER_READ"

pattern S3ObjectCannedAclPUBLICREAD :: S3ObjectCannedAcl
pattern S3ObjectCannedAclPUBLICREAD = S3ObjectCannedAcl' "PUBLIC_READ"

{-# COMPLETE
  S3ObjectCannedAclAUTHENTICATEDREAD,
  S3ObjectCannedAclBUCKETOWNERFULLCONTROL,
  S3ObjectCannedAclBUCKETOWNERREAD,
  S3ObjectCannedAclPUBLICREAD,
  S3ObjectCannedAcl'
  #-}

instance Prelude.FromText S3ObjectCannedAcl where
  parser = S3ObjectCannedAcl' Prelude.<$> Prelude.takeText

instance Prelude.ToText S3ObjectCannedAcl where
  toText (S3ObjectCannedAcl' x) = x

instance Prelude.Hashable S3ObjectCannedAcl

instance Prelude.NFData S3ObjectCannedAcl

instance Prelude.ToByteString S3ObjectCannedAcl

instance Prelude.ToQuery S3ObjectCannedAcl

instance Prelude.ToHeader S3ObjectCannedAcl

instance Prelude.ToJSON S3ObjectCannedAcl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON S3ObjectCannedAcl where
  parseJSON = Prelude.parseJSONText "S3ObjectCannedAcl"
