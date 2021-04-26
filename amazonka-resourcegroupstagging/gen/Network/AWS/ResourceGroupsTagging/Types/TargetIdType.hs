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
-- Module      : Network.AWS.ResourceGroupsTagging.Types.TargetIdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types.TargetIdType
  ( TargetIdType
      ( ..,
        TargetIdTypeACCOUNT,
        TargetIdTypeOU,
        TargetIdTypeROOT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetIdType = TargetIdType'
  { fromTargetIdType ::
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

pattern TargetIdTypeACCOUNT :: TargetIdType
pattern TargetIdTypeACCOUNT = TargetIdType' "ACCOUNT"

pattern TargetIdTypeOU :: TargetIdType
pattern TargetIdTypeOU = TargetIdType' "OU"

pattern TargetIdTypeROOT :: TargetIdType
pattern TargetIdTypeROOT = TargetIdType' "ROOT"

{-# COMPLETE
  TargetIdTypeACCOUNT,
  TargetIdTypeOU,
  TargetIdTypeROOT,
  TargetIdType'
  #-}

instance Prelude.FromText TargetIdType where
  parser = TargetIdType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetIdType where
  toText (TargetIdType' x) = x

instance Prelude.Hashable TargetIdType

instance Prelude.NFData TargetIdType

instance Prelude.ToByteString TargetIdType

instance Prelude.ToQuery TargetIdType

instance Prelude.ToHeader TargetIdType

instance Prelude.FromJSON TargetIdType where
  parseJSON = Prelude.parseJSONText "TargetIdType"
