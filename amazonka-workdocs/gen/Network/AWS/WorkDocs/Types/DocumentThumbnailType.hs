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
-- Module      : Network.AWS.WorkDocs.Types.DocumentThumbnailType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.DocumentThumbnailType
  ( DocumentThumbnailType
      ( ..,
        DocumentThumbnailTypeLARGE,
        DocumentThumbnailTypeSMALL,
        DocumentThumbnailTypeSMALLHQ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentThumbnailType = DocumentThumbnailType'
  { fromDocumentThumbnailType ::
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

pattern DocumentThumbnailTypeLARGE :: DocumentThumbnailType
pattern DocumentThumbnailTypeLARGE = DocumentThumbnailType' "LARGE"

pattern DocumentThumbnailTypeSMALL :: DocumentThumbnailType
pattern DocumentThumbnailTypeSMALL = DocumentThumbnailType' "SMALL"

pattern DocumentThumbnailTypeSMALLHQ :: DocumentThumbnailType
pattern DocumentThumbnailTypeSMALLHQ = DocumentThumbnailType' "SMALL_HQ"

{-# COMPLETE
  DocumentThumbnailTypeLARGE,
  DocumentThumbnailTypeSMALL,
  DocumentThumbnailTypeSMALLHQ,
  DocumentThumbnailType'
  #-}

instance Prelude.FromText DocumentThumbnailType where
  parser = DocumentThumbnailType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentThumbnailType where
  toText (DocumentThumbnailType' x) = x

instance Prelude.Hashable DocumentThumbnailType

instance Prelude.NFData DocumentThumbnailType

instance Prelude.ToByteString DocumentThumbnailType

instance Prelude.ToQuery DocumentThumbnailType

instance Prelude.ToHeader DocumentThumbnailType

instance Prelude.FromJSON DocumentThumbnailType where
  parseJSON = Prelude.parseJSONText "DocumentThumbnailType"
