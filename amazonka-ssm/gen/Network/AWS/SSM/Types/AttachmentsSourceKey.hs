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
-- Module      : Network.AWS.SSM.Types.AttachmentsSourceKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AttachmentsSourceKey
  ( AttachmentsSourceKey
      ( ..,
        AttachmentsSourceKeyAttachmentReference,
        AttachmentsSourceKeyS3FileUrl,
        AttachmentsSourceKeySourceUrl
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AttachmentsSourceKey = AttachmentsSourceKey'
  { fromAttachmentsSourceKey ::
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

pattern AttachmentsSourceKeyAttachmentReference :: AttachmentsSourceKey
pattern AttachmentsSourceKeyAttachmentReference = AttachmentsSourceKey' "AttachmentReference"

pattern AttachmentsSourceKeyS3FileUrl :: AttachmentsSourceKey
pattern AttachmentsSourceKeyS3FileUrl = AttachmentsSourceKey' "S3FileUrl"

pattern AttachmentsSourceKeySourceUrl :: AttachmentsSourceKey
pattern AttachmentsSourceKeySourceUrl = AttachmentsSourceKey' "SourceUrl"

{-# COMPLETE
  AttachmentsSourceKeyAttachmentReference,
  AttachmentsSourceKeyS3FileUrl,
  AttachmentsSourceKeySourceUrl,
  AttachmentsSourceKey'
  #-}

instance Prelude.FromText AttachmentsSourceKey where
  parser = AttachmentsSourceKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttachmentsSourceKey where
  toText (AttachmentsSourceKey' x) = x

instance Prelude.Hashable AttachmentsSourceKey

instance Prelude.NFData AttachmentsSourceKey

instance Prelude.ToByteString AttachmentsSourceKey

instance Prelude.ToQuery AttachmentsSourceKey

instance Prelude.ToHeader AttachmentsSourceKey

instance Prelude.ToJSON AttachmentsSourceKey where
  toJSON = Prelude.toJSONText
