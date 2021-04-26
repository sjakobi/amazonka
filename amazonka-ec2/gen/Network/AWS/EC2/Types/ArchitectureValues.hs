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
-- Module      : Network.AWS.EC2.Types.ArchitectureValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ArchitectureValues
  ( ArchitectureValues
      ( ..,
        ArchitectureValuesARM64,
        ArchitectureValuesI386,
        ArchitectureValuesX8664
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ArchitectureValues = ArchitectureValues'
  { fromArchitectureValues ::
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

pattern ArchitectureValuesARM64 :: ArchitectureValues
pattern ArchitectureValuesARM64 = ArchitectureValues' "arm64"

pattern ArchitectureValuesI386 :: ArchitectureValues
pattern ArchitectureValuesI386 = ArchitectureValues' "i386"

pattern ArchitectureValuesX8664 :: ArchitectureValues
pattern ArchitectureValuesX8664 = ArchitectureValues' "x86_64"

{-# COMPLETE
  ArchitectureValuesARM64,
  ArchitectureValuesI386,
  ArchitectureValuesX8664,
  ArchitectureValues'
  #-}

instance Prelude.FromText ArchitectureValues where
  parser = ArchitectureValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArchitectureValues where
  toText (ArchitectureValues' x) = x

instance Prelude.Hashable ArchitectureValues

instance Prelude.NFData ArchitectureValues

instance Prelude.ToByteString ArchitectureValues

instance Prelude.ToQuery ArchitectureValues

instance Prelude.ToHeader ArchitectureValues

instance Prelude.FromXML ArchitectureValues where
  parseXML = Prelude.parseXMLText "ArchitectureValues"
