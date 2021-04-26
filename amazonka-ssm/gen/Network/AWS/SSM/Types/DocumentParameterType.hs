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
-- Module      : Network.AWS.SSM.Types.DocumentParameterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentParameterType
  ( DocumentParameterType
      ( ..,
        DocumentParameterTypeString,
        DocumentParameterTypeStringList
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentParameterType = DocumentParameterType'
  { fromDocumentParameterType ::
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

pattern DocumentParameterTypeString :: DocumentParameterType
pattern DocumentParameterTypeString = DocumentParameterType' "String"

pattern DocumentParameterTypeStringList :: DocumentParameterType
pattern DocumentParameterTypeStringList = DocumentParameterType' "StringList"

{-# COMPLETE
  DocumentParameterTypeString,
  DocumentParameterTypeStringList,
  DocumentParameterType'
  #-}

instance Prelude.FromText DocumentParameterType where
  parser = DocumentParameterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentParameterType where
  toText (DocumentParameterType' x) = x

instance Prelude.Hashable DocumentParameterType

instance Prelude.NFData DocumentParameterType

instance Prelude.ToByteString DocumentParameterType

instance Prelude.ToQuery DocumentParameterType

instance Prelude.ToHeader DocumentParameterType

instance Prelude.FromJSON DocumentParameterType where
  parseJSON = Prelude.parseJSONText "DocumentParameterType"
