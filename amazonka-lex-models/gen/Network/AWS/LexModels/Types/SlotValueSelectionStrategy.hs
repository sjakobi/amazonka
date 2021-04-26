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
-- Module      : Network.AWS.LexModels.Types.SlotValueSelectionStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.SlotValueSelectionStrategy
  ( SlotValueSelectionStrategy
      ( ..,
        SlotValueSelectionStrategyORIGINALVALUE,
        SlotValueSelectionStrategyTOPRESOLUTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SlotValueSelectionStrategy = SlotValueSelectionStrategy'
  { fromSlotValueSelectionStrategy ::
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

pattern SlotValueSelectionStrategyORIGINALVALUE :: SlotValueSelectionStrategy
pattern SlotValueSelectionStrategyORIGINALVALUE = SlotValueSelectionStrategy' "ORIGINAL_VALUE"

pattern SlotValueSelectionStrategyTOPRESOLUTION :: SlotValueSelectionStrategy
pattern SlotValueSelectionStrategyTOPRESOLUTION = SlotValueSelectionStrategy' "TOP_RESOLUTION"

{-# COMPLETE
  SlotValueSelectionStrategyORIGINALVALUE,
  SlotValueSelectionStrategyTOPRESOLUTION,
  SlotValueSelectionStrategy'
  #-}

instance Prelude.FromText SlotValueSelectionStrategy where
  parser = SlotValueSelectionStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SlotValueSelectionStrategy where
  toText (SlotValueSelectionStrategy' x) = x

instance Prelude.Hashable SlotValueSelectionStrategy

instance Prelude.NFData SlotValueSelectionStrategy

instance Prelude.ToByteString SlotValueSelectionStrategy

instance Prelude.ToQuery SlotValueSelectionStrategy

instance Prelude.ToHeader SlotValueSelectionStrategy

instance Prelude.ToJSON SlotValueSelectionStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SlotValueSelectionStrategy where
  parseJSON = Prelude.parseJSONText "SlotValueSelectionStrategy"
