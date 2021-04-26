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
-- Module      : Network.AWS.OpsWorks.Types.Architecture
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Architecture
  ( Architecture
      ( ..,
        ArchitectureI386,
        ArchitectureX8664
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Architecture = Architecture'
  { fromArchitecture ::
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

pattern ArchitectureI386 :: Architecture
pattern ArchitectureI386 = Architecture' "i386"

pattern ArchitectureX8664 :: Architecture
pattern ArchitectureX8664 = Architecture' "x86_64"

{-# COMPLETE
  ArchitectureI386,
  ArchitectureX8664,
  Architecture'
  #-}

instance Prelude.FromText Architecture where
  parser = Architecture' Prelude.<$> Prelude.takeText

instance Prelude.ToText Architecture where
  toText (Architecture' x) = x

instance Prelude.Hashable Architecture

instance Prelude.NFData Architecture

instance Prelude.ToByteString Architecture

instance Prelude.ToQuery Architecture

instance Prelude.ToHeader Architecture

instance Prelude.ToJSON Architecture where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Architecture where
  parseJSON = Prelude.parseJSONText "Architecture"
