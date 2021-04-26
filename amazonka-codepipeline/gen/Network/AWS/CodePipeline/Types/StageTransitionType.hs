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
-- Module      : Network.AWS.CodePipeline.Types.StageTransitionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.StageTransitionType
  ( StageTransitionType
      ( ..,
        StageTransitionTypeInbound,
        StageTransitionTypeOutbound
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StageTransitionType = StageTransitionType'
  { fromStageTransitionType ::
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

pattern StageTransitionTypeInbound :: StageTransitionType
pattern StageTransitionTypeInbound = StageTransitionType' "Inbound"

pattern StageTransitionTypeOutbound :: StageTransitionType
pattern StageTransitionTypeOutbound = StageTransitionType' "Outbound"

{-# COMPLETE
  StageTransitionTypeInbound,
  StageTransitionTypeOutbound,
  StageTransitionType'
  #-}

instance Prelude.FromText StageTransitionType where
  parser = StageTransitionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StageTransitionType where
  toText (StageTransitionType' x) = x

instance Prelude.Hashable StageTransitionType

instance Prelude.NFData StageTransitionType

instance Prelude.ToByteString StageTransitionType

instance Prelude.ToQuery StageTransitionType

instance Prelude.ToHeader StageTransitionType

instance Prelude.ToJSON StageTransitionType where
  toJSON = Prelude.toJSONText
