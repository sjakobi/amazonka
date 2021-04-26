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
-- Module      : Network.AWS.SSM.Types.DocumentMetadataEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentMetadataEnum
  ( DocumentMetadataEnum
      ( ..,
        DocumentMetadataEnumDocumentReviews
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentMetadataEnum = DocumentMetadataEnum'
  { fromDocumentMetadataEnum ::
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

pattern DocumentMetadataEnumDocumentReviews :: DocumentMetadataEnum
pattern DocumentMetadataEnumDocumentReviews = DocumentMetadataEnum' "DocumentReviews"

{-# COMPLETE
  DocumentMetadataEnumDocumentReviews,
  DocumentMetadataEnum'
  #-}

instance Prelude.FromText DocumentMetadataEnum where
  parser = DocumentMetadataEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentMetadataEnum where
  toText (DocumentMetadataEnum' x) = x

instance Prelude.Hashable DocumentMetadataEnum

instance Prelude.NFData DocumentMetadataEnum

instance Prelude.ToByteString DocumentMetadataEnum

instance Prelude.ToQuery DocumentMetadataEnum

instance Prelude.ToHeader DocumentMetadataEnum

instance Prelude.ToJSON DocumentMetadataEnum where
  toJSON = Prelude.toJSONText
