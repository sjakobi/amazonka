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
-- Module      : Network.AWS.Inspector.Types.ScopeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.ScopeType
  ( ScopeType
      ( ..,
        ScopeTypeINSTANCEID,
        ScopeTypeRULESPACKAGEARN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScopeType = ScopeType'
  { fromScopeType ::
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

pattern ScopeTypeINSTANCEID :: ScopeType
pattern ScopeTypeINSTANCEID = ScopeType' "INSTANCE_ID"

pattern ScopeTypeRULESPACKAGEARN :: ScopeType
pattern ScopeTypeRULESPACKAGEARN = ScopeType' "RULES_PACKAGE_ARN"

{-# COMPLETE
  ScopeTypeINSTANCEID,
  ScopeTypeRULESPACKAGEARN,
  ScopeType'
  #-}

instance Prelude.FromText ScopeType where
  parser = ScopeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScopeType where
  toText (ScopeType' x) = x

instance Prelude.Hashable ScopeType

instance Prelude.NFData ScopeType

instance Prelude.ToByteString ScopeType

instance Prelude.ToQuery ScopeType

instance Prelude.ToHeader ScopeType

instance Prelude.FromJSON ScopeType where
  parseJSON = Prelude.parseJSONText "ScopeType"
