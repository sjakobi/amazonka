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
-- Module      : Network.AWS.SSM.Types.DocumentFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentFilterKey
  ( DocumentFilterKey
      ( ..,
        DocumentFilterKeyDocumentType,
        DocumentFilterKeyName,
        DocumentFilterKeyOwner,
        DocumentFilterKeyPlatformTypes
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentFilterKey = DocumentFilterKey'
  { fromDocumentFilterKey ::
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

pattern DocumentFilterKeyDocumentType :: DocumentFilterKey
pattern DocumentFilterKeyDocumentType = DocumentFilterKey' "DocumentType"

pattern DocumentFilterKeyName :: DocumentFilterKey
pattern DocumentFilterKeyName = DocumentFilterKey' "Name"

pattern DocumentFilterKeyOwner :: DocumentFilterKey
pattern DocumentFilterKeyOwner = DocumentFilterKey' "Owner"

pattern DocumentFilterKeyPlatformTypes :: DocumentFilterKey
pattern DocumentFilterKeyPlatformTypes = DocumentFilterKey' "PlatformTypes"

{-# COMPLETE
  DocumentFilterKeyDocumentType,
  DocumentFilterKeyName,
  DocumentFilterKeyOwner,
  DocumentFilterKeyPlatformTypes,
  DocumentFilterKey'
  #-}

instance Prelude.FromText DocumentFilterKey where
  parser = DocumentFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentFilterKey where
  toText (DocumentFilterKey' x) = x

instance Prelude.Hashable DocumentFilterKey

instance Prelude.NFData DocumentFilterKey

instance Prelude.ToByteString DocumentFilterKey

instance Prelude.ToQuery DocumentFilterKey

instance Prelude.ToHeader DocumentFilterKey

instance Prelude.ToJSON DocumentFilterKey where
  toJSON = Prelude.toJSONText
