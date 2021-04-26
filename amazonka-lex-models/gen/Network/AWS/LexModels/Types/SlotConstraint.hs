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
-- Module      : Network.AWS.LexModels.Types.SlotConstraint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.SlotConstraint
  ( SlotConstraint
      ( ..,
        SlotConstraintOptional,
        SlotConstraintRequired
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SlotConstraint = SlotConstraint'
  { fromSlotConstraint ::
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

pattern SlotConstraintOptional :: SlotConstraint
pattern SlotConstraintOptional = SlotConstraint' "Optional"

pattern SlotConstraintRequired :: SlotConstraint
pattern SlotConstraintRequired = SlotConstraint' "Required"

{-# COMPLETE
  SlotConstraintOptional,
  SlotConstraintRequired,
  SlotConstraint'
  #-}

instance Prelude.FromText SlotConstraint where
  parser = SlotConstraint' Prelude.<$> Prelude.takeText

instance Prelude.ToText SlotConstraint where
  toText (SlotConstraint' x) = x

instance Prelude.Hashable SlotConstraint

instance Prelude.NFData SlotConstraint

instance Prelude.ToByteString SlotConstraint

instance Prelude.ToQuery SlotConstraint

instance Prelude.ToHeader SlotConstraint

instance Prelude.ToJSON SlotConstraint where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SlotConstraint where
  parseJSON = Prelude.parseJSONText "SlotConstraint"
