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
-- Module      : Network.AWS.EMR.Types.Unit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.Unit
  ( Unit
      ( ..,
        UnitBITS,
        UnitBITSPERSECOND,
        UnitBYTES,
        UnitBYTESPERSECOND,
        UnitCOUNT,
        UnitCOUNTPERSECOND,
        UnitGIGABITS,
        UnitGIGABITSPERSECOND,
        UnitGIGABYTES,
        UnitGIGABYTESPERSECOND,
        UnitKILOBITS,
        UnitKILOBITSPERSECOND,
        UnitKILOBYTES,
        UnitKILOBYTESPERSECOND,
        UnitMEGABITS,
        UnitMEGABITSPERSECOND,
        UnitMEGABYTES,
        UnitMEGABYTESPERSECOND,
        UnitMICROSECONDS,
        UnitMILLISECONDS,
        UnitNONE,
        UnitPERCENT,
        UnitSECONDS,
        UnitTERABITS,
        UnitTERABITSPERSECOND,
        UnitTERABYTES,
        UnitTERABYTESPERSECOND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Unit = Unit' {fromUnit :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern UnitBITS :: Unit
pattern UnitBITS = Unit' "BITS"

pattern UnitBITSPERSECOND :: Unit
pattern UnitBITSPERSECOND = Unit' "BITS_PER_SECOND"

pattern UnitBYTES :: Unit
pattern UnitBYTES = Unit' "BYTES"

pattern UnitBYTESPERSECOND :: Unit
pattern UnitBYTESPERSECOND = Unit' "BYTES_PER_SECOND"

pattern UnitCOUNT :: Unit
pattern UnitCOUNT = Unit' "COUNT"

pattern UnitCOUNTPERSECOND :: Unit
pattern UnitCOUNTPERSECOND = Unit' "COUNT_PER_SECOND"

pattern UnitGIGABITS :: Unit
pattern UnitGIGABITS = Unit' "GIGA_BITS"

pattern UnitGIGABITSPERSECOND :: Unit
pattern UnitGIGABITSPERSECOND = Unit' "GIGA_BITS_PER_SECOND"

pattern UnitGIGABYTES :: Unit
pattern UnitGIGABYTES = Unit' "GIGA_BYTES"

pattern UnitGIGABYTESPERSECOND :: Unit
pattern UnitGIGABYTESPERSECOND = Unit' "GIGA_BYTES_PER_SECOND"

pattern UnitKILOBITS :: Unit
pattern UnitKILOBITS = Unit' "KILO_BITS"

pattern UnitKILOBITSPERSECOND :: Unit
pattern UnitKILOBITSPERSECOND = Unit' "KILO_BITS_PER_SECOND"

pattern UnitKILOBYTES :: Unit
pattern UnitKILOBYTES = Unit' "KILO_BYTES"

pattern UnitKILOBYTESPERSECOND :: Unit
pattern UnitKILOBYTESPERSECOND = Unit' "KILO_BYTES_PER_SECOND"

pattern UnitMEGABITS :: Unit
pattern UnitMEGABITS = Unit' "MEGA_BITS"

pattern UnitMEGABITSPERSECOND :: Unit
pattern UnitMEGABITSPERSECOND = Unit' "MEGA_BITS_PER_SECOND"

pattern UnitMEGABYTES :: Unit
pattern UnitMEGABYTES = Unit' "MEGA_BYTES"

pattern UnitMEGABYTESPERSECOND :: Unit
pattern UnitMEGABYTESPERSECOND = Unit' "MEGA_BYTES_PER_SECOND"

pattern UnitMICROSECONDS :: Unit
pattern UnitMICROSECONDS = Unit' "MICRO_SECONDS"

pattern UnitMILLISECONDS :: Unit
pattern UnitMILLISECONDS = Unit' "MILLI_SECONDS"

pattern UnitNONE :: Unit
pattern UnitNONE = Unit' "NONE"

pattern UnitPERCENT :: Unit
pattern UnitPERCENT = Unit' "PERCENT"

pattern UnitSECONDS :: Unit
pattern UnitSECONDS = Unit' "SECONDS"

pattern UnitTERABITS :: Unit
pattern UnitTERABITS = Unit' "TERA_BITS"

pattern UnitTERABITSPERSECOND :: Unit
pattern UnitTERABITSPERSECOND = Unit' "TERA_BITS_PER_SECOND"

pattern UnitTERABYTES :: Unit
pattern UnitTERABYTES = Unit' "TERA_BYTES"

pattern UnitTERABYTESPERSECOND :: Unit
pattern UnitTERABYTESPERSECOND = Unit' "TERA_BYTES_PER_SECOND"

{-# COMPLETE
  UnitBITS,
  UnitBITSPERSECOND,
  UnitBYTES,
  UnitBYTESPERSECOND,
  UnitCOUNT,
  UnitCOUNTPERSECOND,
  UnitGIGABITS,
  UnitGIGABITSPERSECOND,
  UnitGIGABYTES,
  UnitGIGABYTESPERSECOND,
  UnitKILOBITS,
  UnitKILOBITSPERSECOND,
  UnitKILOBYTES,
  UnitKILOBYTESPERSECOND,
  UnitMEGABITS,
  UnitMEGABITSPERSECOND,
  UnitMEGABYTES,
  UnitMEGABYTESPERSECOND,
  UnitMICROSECONDS,
  UnitMILLISECONDS,
  UnitNONE,
  UnitPERCENT,
  UnitSECONDS,
  UnitTERABITS,
  UnitTERABITSPERSECOND,
  UnitTERABYTES,
  UnitTERABYTESPERSECOND,
  Unit'
  #-}

instance Prelude.FromText Unit where
  parser = Unit' Prelude.<$> Prelude.takeText

instance Prelude.ToText Unit where
  toText (Unit' x) = x

instance Prelude.Hashable Unit

instance Prelude.NFData Unit

instance Prelude.ToByteString Unit

instance Prelude.ToQuery Unit

instance Prelude.ToHeader Unit

instance Prelude.ToJSON Unit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Unit where
  parseJSON = Prelude.parseJSONText "Unit"
