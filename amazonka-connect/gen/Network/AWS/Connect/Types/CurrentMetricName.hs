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
-- Module      : Network.AWS.Connect.Types.CurrentMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.CurrentMetricName
  ( CurrentMetricName
      ( ..,
        CurrentMetricNameAGENTSAFTERCONTACTWORK,
        CurrentMetricNameAGENTSAVAILABLE,
        CurrentMetricNameAGENTSERROR,
        CurrentMetricNameAGENTSNONPRODUCTIVE,
        CurrentMetricNameAGENTSONCALL,
        CurrentMetricNameAGENTSONCONTACT,
        CurrentMetricNameAGENTSONLINE,
        CurrentMetricNameAGENTSSTAFFED,
        CurrentMetricNameCONTACTSINQUEUE,
        CurrentMetricNameCONTACTSSCHEDULED,
        CurrentMetricNameOLDESTCONTACTAGE,
        CurrentMetricNameSLOTSACTIVE,
        CurrentMetricNameSLOTSAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The current metric names.
newtype CurrentMetricName = CurrentMetricName'
  { fromCurrentMetricName ::
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

pattern CurrentMetricNameAGENTSAFTERCONTACTWORK :: CurrentMetricName
pattern CurrentMetricNameAGENTSAFTERCONTACTWORK = CurrentMetricName' "AGENTS_AFTER_CONTACT_WORK"

pattern CurrentMetricNameAGENTSAVAILABLE :: CurrentMetricName
pattern CurrentMetricNameAGENTSAVAILABLE = CurrentMetricName' "AGENTS_AVAILABLE"

pattern CurrentMetricNameAGENTSERROR :: CurrentMetricName
pattern CurrentMetricNameAGENTSERROR = CurrentMetricName' "AGENTS_ERROR"

pattern CurrentMetricNameAGENTSNONPRODUCTIVE :: CurrentMetricName
pattern CurrentMetricNameAGENTSNONPRODUCTIVE = CurrentMetricName' "AGENTS_NON_PRODUCTIVE"

pattern CurrentMetricNameAGENTSONCALL :: CurrentMetricName
pattern CurrentMetricNameAGENTSONCALL = CurrentMetricName' "AGENTS_ON_CALL"

pattern CurrentMetricNameAGENTSONCONTACT :: CurrentMetricName
pattern CurrentMetricNameAGENTSONCONTACT = CurrentMetricName' "AGENTS_ON_CONTACT"

pattern CurrentMetricNameAGENTSONLINE :: CurrentMetricName
pattern CurrentMetricNameAGENTSONLINE = CurrentMetricName' "AGENTS_ONLINE"

pattern CurrentMetricNameAGENTSSTAFFED :: CurrentMetricName
pattern CurrentMetricNameAGENTSSTAFFED = CurrentMetricName' "AGENTS_STAFFED"

pattern CurrentMetricNameCONTACTSINQUEUE :: CurrentMetricName
pattern CurrentMetricNameCONTACTSINQUEUE = CurrentMetricName' "CONTACTS_IN_QUEUE"

pattern CurrentMetricNameCONTACTSSCHEDULED :: CurrentMetricName
pattern CurrentMetricNameCONTACTSSCHEDULED = CurrentMetricName' "CONTACTS_SCHEDULED"

pattern CurrentMetricNameOLDESTCONTACTAGE :: CurrentMetricName
pattern CurrentMetricNameOLDESTCONTACTAGE = CurrentMetricName' "OLDEST_CONTACT_AGE"

pattern CurrentMetricNameSLOTSACTIVE :: CurrentMetricName
pattern CurrentMetricNameSLOTSACTIVE = CurrentMetricName' "SLOTS_ACTIVE"

pattern CurrentMetricNameSLOTSAVAILABLE :: CurrentMetricName
pattern CurrentMetricNameSLOTSAVAILABLE = CurrentMetricName' "SLOTS_AVAILABLE"

{-# COMPLETE
  CurrentMetricNameAGENTSAFTERCONTACTWORK,
  CurrentMetricNameAGENTSAVAILABLE,
  CurrentMetricNameAGENTSERROR,
  CurrentMetricNameAGENTSNONPRODUCTIVE,
  CurrentMetricNameAGENTSONCALL,
  CurrentMetricNameAGENTSONCONTACT,
  CurrentMetricNameAGENTSONLINE,
  CurrentMetricNameAGENTSSTAFFED,
  CurrentMetricNameCONTACTSINQUEUE,
  CurrentMetricNameCONTACTSSCHEDULED,
  CurrentMetricNameOLDESTCONTACTAGE,
  CurrentMetricNameSLOTSACTIVE,
  CurrentMetricNameSLOTSAVAILABLE,
  CurrentMetricName'
  #-}

instance Prelude.FromText CurrentMetricName where
  parser = CurrentMetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText CurrentMetricName where
  toText (CurrentMetricName' x) = x

instance Prelude.Hashable CurrentMetricName

instance Prelude.NFData CurrentMetricName

instance Prelude.ToByteString CurrentMetricName

instance Prelude.ToQuery CurrentMetricName

instance Prelude.ToHeader CurrentMetricName

instance Prelude.ToJSON CurrentMetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CurrentMetricName where
  parseJSON = Prelude.parseJSONText "CurrentMetricName"
