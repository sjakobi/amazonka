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
-- Module      : Network.AWS.Connect.Types.InstanceAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceAttributeType
  ( InstanceAttributeType
      ( ..,
        InstanceAttributeTypeAUTORESOLVEBESTVOICES,
        InstanceAttributeTypeCONTACTFLOWLOGS,
        InstanceAttributeTypeCONTACTLENS,
        InstanceAttributeTypeEARLYMEDIA,
        InstanceAttributeTypeINBOUNDCALLS,
        InstanceAttributeTypeOUTBOUNDCALLS,
        InstanceAttributeTypeUSECUSTOMTTSVOICES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceAttributeType = InstanceAttributeType'
  { fromInstanceAttributeType ::
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

pattern InstanceAttributeTypeAUTORESOLVEBESTVOICES :: InstanceAttributeType
pattern InstanceAttributeTypeAUTORESOLVEBESTVOICES = InstanceAttributeType' "AUTO_RESOLVE_BEST_VOICES"

pattern InstanceAttributeTypeCONTACTFLOWLOGS :: InstanceAttributeType
pattern InstanceAttributeTypeCONTACTFLOWLOGS = InstanceAttributeType' "CONTACTFLOW_LOGS"

pattern InstanceAttributeTypeCONTACTLENS :: InstanceAttributeType
pattern InstanceAttributeTypeCONTACTLENS = InstanceAttributeType' "CONTACT_LENS"

pattern InstanceAttributeTypeEARLYMEDIA :: InstanceAttributeType
pattern InstanceAttributeTypeEARLYMEDIA = InstanceAttributeType' "EARLY_MEDIA"

pattern InstanceAttributeTypeINBOUNDCALLS :: InstanceAttributeType
pattern InstanceAttributeTypeINBOUNDCALLS = InstanceAttributeType' "INBOUND_CALLS"

pattern InstanceAttributeTypeOUTBOUNDCALLS :: InstanceAttributeType
pattern InstanceAttributeTypeOUTBOUNDCALLS = InstanceAttributeType' "OUTBOUND_CALLS"

pattern InstanceAttributeTypeUSECUSTOMTTSVOICES :: InstanceAttributeType
pattern InstanceAttributeTypeUSECUSTOMTTSVOICES = InstanceAttributeType' "USE_CUSTOM_TTS_VOICES"

{-# COMPLETE
  InstanceAttributeTypeAUTORESOLVEBESTVOICES,
  InstanceAttributeTypeCONTACTFLOWLOGS,
  InstanceAttributeTypeCONTACTLENS,
  InstanceAttributeTypeEARLYMEDIA,
  InstanceAttributeTypeINBOUNDCALLS,
  InstanceAttributeTypeOUTBOUNDCALLS,
  InstanceAttributeTypeUSECUSTOMTTSVOICES,
  InstanceAttributeType'
  #-}

instance Prelude.FromText InstanceAttributeType where
  parser = InstanceAttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceAttributeType where
  toText (InstanceAttributeType' x) = x

instance Prelude.Hashable InstanceAttributeType

instance Prelude.NFData InstanceAttributeType

instance Prelude.ToByteString InstanceAttributeType

instance Prelude.ToQuery InstanceAttributeType

instance Prelude.ToHeader InstanceAttributeType

instance Prelude.ToJSON InstanceAttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceAttributeType where
  parseJSON = Prelude.parseJSONText "InstanceAttributeType"
