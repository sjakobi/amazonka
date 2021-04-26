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
-- Module      : Network.AWS.Glue.Types.TriggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TriggerType
  ( TriggerType
      ( ..,
        TriggerTypeCONDITIONAL,
        TriggerTypeONDEMAND,
        TriggerTypeSCHEDULED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TriggerType = TriggerType'
  { fromTriggerType ::
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

pattern TriggerTypeCONDITIONAL :: TriggerType
pattern TriggerTypeCONDITIONAL = TriggerType' "CONDITIONAL"

pattern TriggerTypeONDEMAND :: TriggerType
pattern TriggerTypeONDEMAND = TriggerType' "ON_DEMAND"

pattern TriggerTypeSCHEDULED :: TriggerType
pattern TriggerTypeSCHEDULED = TriggerType' "SCHEDULED"

{-# COMPLETE
  TriggerTypeCONDITIONAL,
  TriggerTypeONDEMAND,
  TriggerTypeSCHEDULED,
  TriggerType'
  #-}

instance Prelude.FromText TriggerType where
  parser = TriggerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TriggerType where
  toText (TriggerType' x) = x

instance Prelude.Hashable TriggerType

instance Prelude.NFData TriggerType

instance Prelude.ToByteString TriggerType

instance Prelude.ToQuery TriggerType

instance Prelude.ToHeader TriggerType

instance Prelude.ToJSON TriggerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TriggerType where
  parseJSON = Prelude.parseJSONText "TriggerType"
