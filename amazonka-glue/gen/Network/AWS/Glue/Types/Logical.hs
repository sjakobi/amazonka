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
-- Module      : Network.AWS.Glue.Types.Logical
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Logical
  ( Logical
      ( ..,
        LogicalAND,
        LogicalANY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Logical = Logical'
  { fromLogical ::
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

pattern LogicalAND :: Logical
pattern LogicalAND = Logical' "AND"

pattern LogicalANY :: Logical
pattern LogicalANY = Logical' "ANY"

{-# COMPLETE
  LogicalAND,
  LogicalANY,
  Logical'
  #-}

instance Prelude.FromText Logical where
  parser = Logical' Prelude.<$> Prelude.takeText

instance Prelude.ToText Logical where
  toText (Logical' x) = x

instance Prelude.Hashable Logical

instance Prelude.NFData Logical

instance Prelude.ToByteString Logical

instance Prelude.ToQuery Logical

instance Prelude.ToHeader Logical

instance Prelude.ToJSON Logical where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Logical where
  parseJSON = Prelude.parseJSONText "Logical"
