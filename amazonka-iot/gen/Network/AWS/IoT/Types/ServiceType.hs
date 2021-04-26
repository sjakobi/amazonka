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
-- Module      : Network.AWS.IoT.Types.ServiceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ServiceType
  ( ServiceType
      ( ..,
        ServiceTypeCREDENTIALPROVIDER,
        ServiceTypeDATA,
        ServiceTypeJOBS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceType = ServiceType'
  { fromServiceType ::
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

pattern ServiceTypeCREDENTIALPROVIDER :: ServiceType
pattern ServiceTypeCREDENTIALPROVIDER = ServiceType' "CREDENTIAL_PROVIDER"

pattern ServiceTypeDATA :: ServiceType
pattern ServiceTypeDATA = ServiceType' "DATA"

pattern ServiceTypeJOBS :: ServiceType
pattern ServiceTypeJOBS = ServiceType' "JOBS"

{-# COMPLETE
  ServiceTypeCREDENTIALPROVIDER,
  ServiceTypeDATA,
  ServiceTypeJOBS,
  ServiceType'
  #-}

instance Prelude.FromText ServiceType where
  parser = ServiceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceType where
  toText (ServiceType' x) = x

instance Prelude.Hashable ServiceType

instance Prelude.NFData ServiceType

instance Prelude.ToByteString ServiceType

instance Prelude.ToQuery ServiceType

instance Prelude.ToHeader ServiceType

instance Prelude.ToJSON ServiceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ServiceType where
  parseJSON = Prelude.parseJSONText "ServiceType"
