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
-- Module      : Network.AWS.CodePipeline.Types.BlockerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.BlockerType
  ( BlockerType
      ( ..,
        BlockerTypeSchedule
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BlockerType = BlockerType'
  { fromBlockerType ::
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

pattern BlockerTypeSchedule :: BlockerType
pattern BlockerTypeSchedule = BlockerType' "Schedule"

{-# COMPLETE
  BlockerTypeSchedule,
  BlockerType'
  #-}

instance Prelude.FromText BlockerType where
  parser = BlockerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BlockerType where
  toText (BlockerType' x) = x

instance Prelude.Hashable BlockerType

instance Prelude.NFData BlockerType

instance Prelude.ToByteString BlockerType

instance Prelude.ToQuery BlockerType

instance Prelude.ToHeader BlockerType

instance Prelude.ToJSON BlockerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BlockerType where
  parseJSON = Prelude.parseJSONText "BlockerType"
