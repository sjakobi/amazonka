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
-- Module      : Network.AWS.WorkDocs.Types.FolderContentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.FolderContentType
  ( FolderContentType
      ( ..,
        FolderContentTypeALL,
        FolderContentTypeDOCUMENT,
        FolderContentTypeFOLDER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FolderContentType = FolderContentType'
  { fromFolderContentType ::
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

pattern FolderContentTypeALL :: FolderContentType
pattern FolderContentTypeALL = FolderContentType' "ALL"

pattern FolderContentTypeDOCUMENT :: FolderContentType
pattern FolderContentTypeDOCUMENT = FolderContentType' "DOCUMENT"

pattern FolderContentTypeFOLDER :: FolderContentType
pattern FolderContentTypeFOLDER = FolderContentType' "FOLDER"

{-# COMPLETE
  FolderContentTypeALL,
  FolderContentTypeDOCUMENT,
  FolderContentTypeFOLDER,
  FolderContentType'
  #-}

instance Prelude.FromText FolderContentType where
  parser = FolderContentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FolderContentType where
  toText (FolderContentType' x) = x

instance Prelude.Hashable FolderContentType

instance Prelude.NFData FolderContentType

instance Prelude.ToByteString FolderContentType

instance Prelude.ToQuery FolderContentType

instance Prelude.ToHeader FolderContentType

instance Prelude.ToJSON FolderContentType where
  toJSON = Prelude.toJSONText
