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
-- Module      : Network.AWS.ECS.Types.Scope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Scope
  ( Scope
      ( ..,
        ScopeShared,
        ScopeTask
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Scope = Scope' {fromScope :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ScopeShared :: Scope
pattern ScopeShared = Scope' "shared"

pattern ScopeTask :: Scope
pattern ScopeTask = Scope' "task"

{-# COMPLETE
  ScopeShared,
  ScopeTask,
  Scope'
  #-}

instance Prelude.FromText Scope where
  parser = Scope' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scope where
  toText (Scope' x) = x

instance Prelude.Hashable Scope

instance Prelude.NFData Scope

instance Prelude.ToByteString Scope

instance Prelude.ToQuery Scope

instance Prelude.ToHeader Scope

instance Prelude.ToJSON Scope where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scope where
  parseJSON = Prelude.parseJSONText "Scope"
