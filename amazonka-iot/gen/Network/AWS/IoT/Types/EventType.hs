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
-- Module      : Network.AWS.IoT.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.EventType
  ( EventType
      ( ..,
        EventTypeCACERTIFICATE,
        EventTypeCERTIFICATE,
        EventTypeJOB,
        EventTypeJOBEXECUTION,
        EventTypePOLICY,
        EventTypeTHING,
        EventTypeTHINGGROUP,
        EventTypeTHINGGROUPHIERARCHY,
        EventTypeTHINGGROUPMEMBERSHIP,
        EventTypeTHINGTYPE,
        EventTypeTHINGTYPEASSOCIATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventType = EventType'
  { fromEventType ::
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

pattern EventTypeCACERTIFICATE :: EventType
pattern EventTypeCACERTIFICATE = EventType' "CA_CERTIFICATE"

pattern EventTypeCERTIFICATE :: EventType
pattern EventTypeCERTIFICATE = EventType' "CERTIFICATE"

pattern EventTypeJOB :: EventType
pattern EventTypeJOB = EventType' "JOB"

pattern EventTypeJOBEXECUTION :: EventType
pattern EventTypeJOBEXECUTION = EventType' "JOB_EXECUTION"

pattern EventTypePOLICY :: EventType
pattern EventTypePOLICY = EventType' "POLICY"

pattern EventTypeTHING :: EventType
pattern EventTypeTHING = EventType' "THING"

pattern EventTypeTHINGGROUP :: EventType
pattern EventTypeTHINGGROUP = EventType' "THING_GROUP"

pattern EventTypeTHINGGROUPHIERARCHY :: EventType
pattern EventTypeTHINGGROUPHIERARCHY = EventType' "THING_GROUP_HIERARCHY"

pattern EventTypeTHINGGROUPMEMBERSHIP :: EventType
pattern EventTypeTHINGGROUPMEMBERSHIP = EventType' "THING_GROUP_MEMBERSHIP"

pattern EventTypeTHINGTYPE :: EventType
pattern EventTypeTHINGTYPE = EventType' "THING_TYPE"

pattern EventTypeTHINGTYPEASSOCIATION :: EventType
pattern EventTypeTHINGTYPEASSOCIATION = EventType' "THING_TYPE_ASSOCIATION"

{-# COMPLETE
  EventTypeCACERTIFICATE,
  EventTypeCERTIFICATE,
  EventTypeJOB,
  EventTypeJOBEXECUTION,
  EventTypePOLICY,
  EventTypeTHING,
  EventTypeTHINGGROUP,
  EventTypeTHINGGROUPHIERARCHY,
  EventTypeTHINGGROUPMEMBERSHIP,
  EventTypeTHINGTYPE,
  EventTypeTHINGTYPEASSOCIATION,
  EventType'
  #-}

instance Prelude.FromText EventType where
  parser = EventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventType where
  toText (EventType' x) = x

instance Prelude.Hashable EventType

instance Prelude.NFData EventType

instance Prelude.ToByteString EventType

instance Prelude.ToQuery EventType

instance Prelude.ToHeader EventType

instance Prelude.ToJSON EventType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EventType where
  parseJSON = Prelude.parseJSONText "EventType"
