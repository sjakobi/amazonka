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
-- Module      : Network.AWS.WorkSpaces.Types.Compute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.Compute
  ( Compute
      ( ..,
        ComputeGRAPHICS,
        ComputeGRAPHICSPRO,
        ComputePERFORMANCE,
        ComputePOWER,
        ComputePOWERPRO,
        ComputeSTANDARD,
        ComputeVALUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Compute = Compute'
  { fromCompute ::
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

pattern ComputeGRAPHICS :: Compute
pattern ComputeGRAPHICS = Compute' "GRAPHICS"

pattern ComputeGRAPHICSPRO :: Compute
pattern ComputeGRAPHICSPRO = Compute' "GRAPHICSPRO"

pattern ComputePERFORMANCE :: Compute
pattern ComputePERFORMANCE = Compute' "PERFORMANCE"

pattern ComputePOWER :: Compute
pattern ComputePOWER = Compute' "POWER"

pattern ComputePOWERPRO :: Compute
pattern ComputePOWERPRO = Compute' "POWERPRO"

pattern ComputeSTANDARD :: Compute
pattern ComputeSTANDARD = Compute' "STANDARD"

pattern ComputeVALUE :: Compute
pattern ComputeVALUE = Compute' "VALUE"

{-# COMPLETE
  ComputeGRAPHICS,
  ComputeGRAPHICSPRO,
  ComputePERFORMANCE,
  ComputePOWER,
  ComputePOWERPRO,
  ComputeSTANDARD,
  ComputeVALUE,
  Compute'
  #-}

instance Prelude.FromText Compute where
  parser = Compute' Prelude.<$> Prelude.takeText

instance Prelude.ToText Compute where
  toText (Compute' x) = x

instance Prelude.Hashable Compute

instance Prelude.NFData Compute

instance Prelude.ToByteString Compute

instance Prelude.ToQuery Compute

instance Prelude.ToHeader Compute

instance Prelude.ToJSON Compute where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Compute where
  parseJSON = Prelude.parseJSONText "Compute"
