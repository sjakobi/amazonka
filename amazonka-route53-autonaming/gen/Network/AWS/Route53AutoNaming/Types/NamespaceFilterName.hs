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
-- Module      : Network.AWS.Route53AutoNaming.Types.NamespaceFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.NamespaceFilterName
  ( NamespaceFilterName
      ( ..,
        NamespaceFilterNameTYPE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NamespaceFilterName = NamespaceFilterName'
  { fromNamespaceFilterName ::
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

pattern NamespaceFilterNameTYPE :: NamespaceFilterName
pattern NamespaceFilterNameTYPE = NamespaceFilterName' "TYPE"

{-# COMPLETE
  NamespaceFilterNameTYPE,
  NamespaceFilterName'
  #-}

instance Prelude.FromText NamespaceFilterName where
  parser = NamespaceFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText NamespaceFilterName where
  toText (NamespaceFilterName' x) = x

instance Prelude.Hashable NamespaceFilterName

instance Prelude.NFData NamespaceFilterName

instance Prelude.ToByteString NamespaceFilterName

instance Prelude.ToQuery NamespaceFilterName

instance Prelude.ToHeader NamespaceFilterName

instance Prelude.ToJSON NamespaceFilterName where
  toJSON = Prelude.toJSONText
