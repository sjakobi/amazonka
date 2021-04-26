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
-- Module      : Network.AWS.Organizations.Types.EffectivePolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.EffectivePolicyType
  ( EffectivePolicyType
      ( ..,
        EffectivePolicyTypeAISERVICESOPTOUTPOLICY,
        EffectivePolicyTypeBACKUPPOLICY,
        EffectivePolicyTypeTAGPOLICY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EffectivePolicyType = EffectivePolicyType'
  { fromEffectivePolicyType ::
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

pattern EffectivePolicyTypeAISERVICESOPTOUTPOLICY :: EffectivePolicyType
pattern EffectivePolicyTypeAISERVICESOPTOUTPOLICY = EffectivePolicyType' "AISERVICES_OPT_OUT_POLICY"

pattern EffectivePolicyTypeBACKUPPOLICY :: EffectivePolicyType
pattern EffectivePolicyTypeBACKUPPOLICY = EffectivePolicyType' "BACKUP_POLICY"

pattern EffectivePolicyTypeTAGPOLICY :: EffectivePolicyType
pattern EffectivePolicyTypeTAGPOLICY = EffectivePolicyType' "TAG_POLICY"

{-# COMPLETE
  EffectivePolicyTypeAISERVICESOPTOUTPOLICY,
  EffectivePolicyTypeBACKUPPOLICY,
  EffectivePolicyTypeTAGPOLICY,
  EffectivePolicyType'
  #-}

instance Prelude.FromText EffectivePolicyType where
  parser = EffectivePolicyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EffectivePolicyType where
  toText (EffectivePolicyType' x) = x

instance Prelude.Hashable EffectivePolicyType

instance Prelude.NFData EffectivePolicyType

instance Prelude.ToByteString EffectivePolicyType

instance Prelude.ToQuery EffectivePolicyType

instance Prelude.ToHeader EffectivePolicyType

instance Prelude.ToJSON EffectivePolicyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EffectivePolicyType where
  parseJSON = Prelude.parseJSONText "EffectivePolicyType"
