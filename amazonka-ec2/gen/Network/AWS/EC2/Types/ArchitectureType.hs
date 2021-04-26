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
-- Module      : Network.AWS.EC2.Types.ArchitectureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ArchitectureType
  ( ArchitectureType
      ( ..,
        ArchitectureTypeARM64,
        ArchitectureTypeI386,
        ArchitectureTypeX8664
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ArchitectureType = ArchitectureType'
  { fromArchitectureType ::
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

pattern ArchitectureTypeARM64 :: ArchitectureType
pattern ArchitectureTypeARM64 = ArchitectureType' "arm64"

pattern ArchitectureTypeI386 :: ArchitectureType
pattern ArchitectureTypeI386 = ArchitectureType' "i386"

pattern ArchitectureTypeX8664 :: ArchitectureType
pattern ArchitectureTypeX8664 = ArchitectureType' "x86_64"

{-# COMPLETE
  ArchitectureTypeARM64,
  ArchitectureTypeI386,
  ArchitectureTypeX8664,
  ArchitectureType'
  #-}

instance Prelude.FromText ArchitectureType where
  parser = ArchitectureType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArchitectureType where
  toText (ArchitectureType' x) = x

instance Prelude.Hashable ArchitectureType

instance Prelude.NFData ArchitectureType

instance Prelude.ToByteString ArchitectureType

instance Prelude.ToQuery ArchitectureType

instance Prelude.ToHeader ArchitectureType

instance Prelude.FromXML ArchitectureType where
  parseXML = Prelude.parseXMLText "ArchitectureType"
