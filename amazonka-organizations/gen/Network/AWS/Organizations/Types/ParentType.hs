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
-- Module      : Network.AWS.Organizations.Types.ParentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.ParentType
  ( ParentType
      ( ..,
        ParentTypeORGANIZATIONALUNIT,
        ParentTypeROOT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParentType = ParentType'
  { fromParentType ::
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

pattern ParentTypeORGANIZATIONALUNIT :: ParentType
pattern ParentTypeORGANIZATIONALUNIT = ParentType' "ORGANIZATIONAL_UNIT"

pattern ParentTypeROOT :: ParentType
pattern ParentTypeROOT = ParentType' "ROOT"

{-# COMPLETE
  ParentTypeORGANIZATIONALUNIT,
  ParentTypeROOT,
  ParentType'
  #-}

instance Prelude.FromText ParentType where
  parser = ParentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParentType where
  toText (ParentType' x) = x

instance Prelude.Hashable ParentType

instance Prelude.NFData ParentType

instance Prelude.ToByteString ParentType

instance Prelude.ToQuery ParentType

instance Prelude.ToHeader ParentType

instance Prelude.FromJSON ParentType where
  parseJSON = Prelude.parseJSONText "ParentType"
