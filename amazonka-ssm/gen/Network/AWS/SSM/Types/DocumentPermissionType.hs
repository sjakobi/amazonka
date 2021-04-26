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
-- Module      : Network.AWS.SSM.Types.DocumentPermissionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentPermissionType
  ( DocumentPermissionType
      ( ..,
        DocumentPermissionTypeShare
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentPermissionType = DocumentPermissionType'
  { fromDocumentPermissionType ::
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

pattern DocumentPermissionTypeShare :: DocumentPermissionType
pattern DocumentPermissionTypeShare = DocumentPermissionType' "Share"

{-# COMPLETE
  DocumentPermissionTypeShare,
  DocumentPermissionType'
  #-}

instance Prelude.FromText DocumentPermissionType where
  parser = DocumentPermissionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentPermissionType where
  toText (DocumentPermissionType' x) = x

instance Prelude.Hashable DocumentPermissionType

instance Prelude.NFData DocumentPermissionType

instance Prelude.ToByteString DocumentPermissionType

instance Prelude.ToQuery DocumentPermissionType

instance Prelude.ToHeader DocumentPermissionType

instance Prelude.ToJSON DocumentPermissionType where
  toJSON = Prelude.toJSONText
