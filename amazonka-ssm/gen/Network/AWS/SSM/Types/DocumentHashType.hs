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
-- Module      : Network.AWS.SSM.Types.DocumentHashType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentHashType
  ( DocumentHashType
      ( ..,
        DocumentHashTypeSHA1,
        DocumentHashTypeSHA256
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentHashType = DocumentHashType'
  { fromDocumentHashType ::
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

pattern DocumentHashTypeSHA1 :: DocumentHashType
pattern DocumentHashTypeSHA1 = DocumentHashType' "Sha1"

pattern DocumentHashTypeSHA256 :: DocumentHashType
pattern DocumentHashTypeSHA256 = DocumentHashType' "Sha256"

{-# COMPLETE
  DocumentHashTypeSHA1,
  DocumentHashTypeSHA256,
  DocumentHashType'
  #-}

instance Prelude.FromText DocumentHashType where
  parser = DocumentHashType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentHashType where
  toText (DocumentHashType' x) = x

instance Prelude.Hashable DocumentHashType

instance Prelude.NFData DocumentHashType

instance Prelude.ToByteString DocumentHashType

instance Prelude.ToQuery DocumentHashType

instance Prelude.ToHeader DocumentHashType

instance Prelude.ToJSON DocumentHashType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DocumentHashType where
  parseJSON = Prelude.parseJSONText "DocumentHashType"
