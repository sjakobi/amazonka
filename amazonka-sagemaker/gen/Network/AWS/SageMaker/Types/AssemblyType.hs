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
-- Module      : Network.AWS.SageMaker.Types.AssemblyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AssemblyType
  ( AssemblyType
      ( ..,
        AssemblyTypeLine,
        AssemblyTypeNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssemblyType = AssemblyType'
  { fromAssemblyType ::
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

pattern AssemblyTypeLine :: AssemblyType
pattern AssemblyTypeLine = AssemblyType' "Line"

pattern AssemblyTypeNone :: AssemblyType
pattern AssemblyTypeNone = AssemblyType' "None"

{-# COMPLETE
  AssemblyTypeLine,
  AssemblyTypeNone,
  AssemblyType'
  #-}

instance Prelude.FromText AssemblyType where
  parser = AssemblyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssemblyType where
  toText (AssemblyType' x) = x

instance Prelude.Hashable AssemblyType

instance Prelude.NFData AssemblyType

instance Prelude.ToByteString AssemblyType

instance Prelude.ToQuery AssemblyType

instance Prelude.ToHeader AssemblyType

instance Prelude.ToJSON AssemblyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssemblyType where
  parseJSON = Prelude.parseJSONText "AssemblyType"
