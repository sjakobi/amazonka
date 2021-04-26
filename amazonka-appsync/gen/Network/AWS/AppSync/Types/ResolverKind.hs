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
-- Module      : Network.AWS.AppSync.Types.ResolverKind
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.ResolverKind
  ( ResolverKind
      ( ..,
        ResolverKindPIPELINE,
        ResolverKindUNIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResolverKind = ResolverKind'
  { fromResolverKind ::
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

pattern ResolverKindPIPELINE :: ResolverKind
pattern ResolverKindPIPELINE = ResolverKind' "PIPELINE"

pattern ResolverKindUNIT :: ResolverKind
pattern ResolverKindUNIT = ResolverKind' "UNIT"

{-# COMPLETE
  ResolverKindPIPELINE,
  ResolverKindUNIT,
  ResolverKind'
  #-}

instance Prelude.FromText ResolverKind where
  parser = ResolverKind' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResolverKind where
  toText (ResolverKind' x) = x

instance Prelude.Hashable ResolverKind

instance Prelude.NFData ResolverKind

instance Prelude.ToByteString ResolverKind

instance Prelude.ToQuery ResolverKind

instance Prelude.ToHeader ResolverKind

instance Prelude.ToJSON ResolverKind where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResolverKind where
  parseJSON = Prelude.parseJSONText "ResolverKind"
