{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AttachmentReference,
        S3FileURL,
        SourceURL
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AttachmentsSourceKey
  = AttachmentsSourceKey'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AttachmentReference :: AttachmentsSourceKey
pattern AttachmentReference = AttachmentsSourceKey' "AttachmentReference"

pattern S3FileURL :: AttachmentsSourceKey
pattern S3FileURL = AttachmentsSourceKey' "S3FileUrl"

pattern SourceURL :: AttachmentsSourceKey
pattern SourceURL = AttachmentsSourceKey' "SourceUrl"

{-# COMPLETE
  AttachmentReference,
  S3FileURL,
  SourceURL,
  AttachmentsSourceKey'
  #-}

instance FromText AttachmentsSourceKey where
  parser = (AttachmentsSourceKey' . mk) <$> takeText

instance ToText AttachmentsSourceKey where
  toText (AttachmentsSourceKey' ci) = original ci

instance Hashable AttachmentsSourceKey

instance NFData AttachmentsSourceKey

instance ToByteString AttachmentsSourceKey

instance ToQuery AttachmentsSourceKey

instance ToHeader AttachmentsSourceKey

instance ToJSON AttachmentsSourceKey where
  toJSON = toJSONText
