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
-- Module      : Network.AWS.IAM.Types.AccessAdvisorUsageGranularityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.AccessAdvisorUsageGranularityType
  ( AccessAdvisorUsageGranularityType
      ( ..,
        AccessAdvisorUsageGranularityTypeACTIONLEVEL,
        AccessAdvisorUsageGranularityTypeSERVICELEVEL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessAdvisorUsageGranularityType = AccessAdvisorUsageGranularityType'
  { fromAccessAdvisorUsageGranularityType ::
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

pattern AccessAdvisorUsageGranularityTypeACTIONLEVEL :: AccessAdvisorUsageGranularityType
pattern AccessAdvisorUsageGranularityTypeACTIONLEVEL = AccessAdvisorUsageGranularityType' "ACTION_LEVEL"

pattern AccessAdvisorUsageGranularityTypeSERVICELEVEL :: AccessAdvisorUsageGranularityType
pattern AccessAdvisorUsageGranularityTypeSERVICELEVEL = AccessAdvisorUsageGranularityType' "SERVICE_LEVEL"

{-# COMPLETE
  AccessAdvisorUsageGranularityTypeACTIONLEVEL,
  AccessAdvisorUsageGranularityTypeSERVICELEVEL,
  AccessAdvisorUsageGranularityType'
  #-}

instance Prelude.FromText AccessAdvisorUsageGranularityType where
  parser = AccessAdvisorUsageGranularityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessAdvisorUsageGranularityType where
  toText (AccessAdvisorUsageGranularityType' x) = x

instance Prelude.Hashable AccessAdvisorUsageGranularityType

instance Prelude.NFData AccessAdvisorUsageGranularityType

instance Prelude.ToByteString AccessAdvisorUsageGranularityType

instance Prelude.ToQuery AccessAdvisorUsageGranularityType

instance Prelude.ToHeader AccessAdvisorUsageGranularityType

instance Prelude.FromXML AccessAdvisorUsageGranularityType where
  parseXML = Prelude.parseXMLText "AccessAdvisorUsageGranularityType"
