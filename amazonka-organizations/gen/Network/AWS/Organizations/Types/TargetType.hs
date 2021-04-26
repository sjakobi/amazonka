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
-- Module      : Network.AWS.Organizations.Types.TargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.TargetType
  ( TargetType
      ( ..,
        TargetTypeACCOUNT,
        TargetTypeORGANIZATIONALUNIT,
        TargetTypeROOT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetType = TargetType'
  { fromTargetType ::
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

pattern TargetTypeACCOUNT :: TargetType
pattern TargetTypeACCOUNT = TargetType' "ACCOUNT"

pattern TargetTypeORGANIZATIONALUNIT :: TargetType
pattern TargetTypeORGANIZATIONALUNIT = TargetType' "ORGANIZATIONAL_UNIT"

pattern TargetTypeROOT :: TargetType
pattern TargetTypeROOT = TargetType' "ROOT"

{-# COMPLETE
  TargetTypeACCOUNT,
  TargetTypeORGANIZATIONALUNIT,
  TargetTypeROOT,
  TargetType'
  #-}

instance Prelude.FromText TargetType where
  parser = TargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetType where
  toText (TargetType' x) = x

instance Prelude.Hashable TargetType

instance Prelude.NFData TargetType

instance Prelude.ToByteString TargetType

instance Prelude.ToQuery TargetType

instance Prelude.ToHeader TargetType

instance Prelude.FromJSON TargetType where
  parseJSON = Prelude.parseJSONText "TargetType"
