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
-- Module      : Network.AWS.Organizations.Types.ChildType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.ChildType
  ( ChildType
      ( ..,
        ChildTypeACCOUNT,
        ChildTypeORGANIZATIONALUNIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChildType = ChildType'
  { fromChildType ::
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

pattern ChildTypeACCOUNT :: ChildType
pattern ChildTypeACCOUNT = ChildType' "ACCOUNT"

pattern ChildTypeORGANIZATIONALUNIT :: ChildType
pattern ChildTypeORGANIZATIONALUNIT = ChildType' "ORGANIZATIONAL_UNIT"

{-# COMPLETE
  ChildTypeACCOUNT,
  ChildTypeORGANIZATIONALUNIT,
  ChildType'
  #-}

instance Prelude.FromText ChildType where
  parser = ChildType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChildType where
  toText (ChildType' x) = x

instance Prelude.Hashable ChildType

instance Prelude.NFData ChildType

instance Prelude.ToByteString ChildType

instance Prelude.ToQuery ChildType

instance Prelude.ToHeader ChildType

instance Prelude.ToJSON ChildType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ChildType where
  parseJSON = Prelude.parseJSONText "ChildType"
