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
-- Module      : Network.AWS.RDS.Types.TargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.TargetType
  ( TargetType
      ( ..,
        TargetTypeRDSINSTANCE,
        TargetTypeRDSSERVERLESSENDPOINT,
        TargetTypeTRACKEDCLUSTER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetType = TargetType'
  { fromTargetType ::
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

pattern TargetTypeRDSINSTANCE :: TargetType
pattern TargetTypeRDSINSTANCE = TargetType' "RDS_INSTANCE"

pattern TargetTypeRDSSERVERLESSENDPOINT :: TargetType
pattern TargetTypeRDSSERVERLESSENDPOINT = TargetType' "RDS_SERVERLESS_ENDPOINT"

pattern TargetTypeTRACKEDCLUSTER :: TargetType
pattern TargetTypeTRACKEDCLUSTER = TargetType' "TRACKED_CLUSTER"

{-# COMPLETE
  TargetTypeRDSINSTANCE,
  TargetTypeRDSSERVERLESSENDPOINT,
  TargetTypeTRACKEDCLUSTER,
  TargetType'
  #-}

instance Prelude.FromText TargetType where
  parser = TargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetType where
  toText (TargetType' x) = x

instance Prelude.Hashable TargetType

instance Prelude.NFData TargetType

instance Prelude.ToByteString TargetType

instance Prelude.ToQuery TargetType

instance Prelude.ToHeader TargetType

instance Prelude.FromXML TargetType where
  parseXML = Prelude.parseXMLText "TargetType"
