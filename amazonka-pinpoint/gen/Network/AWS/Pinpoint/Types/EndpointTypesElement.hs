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
-- Module      : Network.AWS.Pinpoint.Types.EndpointTypesElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointTypesElement
  ( EndpointTypesElement
      ( ..,
        EndpointTypesElementADM,
        EndpointTypesElementAPNS,
        EndpointTypesElementAPNSSANDBOX,
        EndpointTypesElementAPNSVOIP,
        EndpointTypesElementAPNSVOIPSANDBOX,
        EndpointTypesElementBAIDU,
        EndpointTypesElementCUSTOM,
        EndpointTypesElementEMAIL,
        EndpointTypesElementGCM,
        EndpointTypesElementPUSH,
        EndpointTypesElementSMS,
        EndpointTypesElementVOICE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EndpointTypesElement = EndpointTypesElement'
  { fromEndpointTypesElement ::
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

pattern EndpointTypesElementADM :: EndpointTypesElement
pattern EndpointTypesElementADM = EndpointTypesElement' "ADM"

pattern EndpointTypesElementAPNS :: EndpointTypesElement
pattern EndpointTypesElementAPNS = EndpointTypesElement' "APNS"

pattern EndpointTypesElementAPNSSANDBOX :: EndpointTypesElement
pattern EndpointTypesElementAPNSSANDBOX = EndpointTypesElement' "APNS_SANDBOX"

pattern EndpointTypesElementAPNSVOIP :: EndpointTypesElement
pattern EndpointTypesElementAPNSVOIP = EndpointTypesElement' "APNS_VOIP"

pattern EndpointTypesElementAPNSVOIPSANDBOX :: EndpointTypesElement
pattern EndpointTypesElementAPNSVOIPSANDBOX = EndpointTypesElement' "APNS_VOIP_SANDBOX"

pattern EndpointTypesElementBAIDU :: EndpointTypesElement
pattern EndpointTypesElementBAIDU = EndpointTypesElement' "BAIDU"

pattern EndpointTypesElementCUSTOM :: EndpointTypesElement
pattern EndpointTypesElementCUSTOM = EndpointTypesElement' "CUSTOM"

pattern EndpointTypesElementEMAIL :: EndpointTypesElement
pattern EndpointTypesElementEMAIL = EndpointTypesElement' "EMAIL"

pattern EndpointTypesElementGCM :: EndpointTypesElement
pattern EndpointTypesElementGCM = EndpointTypesElement' "GCM"

pattern EndpointTypesElementPUSH :: EndpointTypesElement
pattern EndpointTypesElementPUSH = EndpointTypesElement' "PUSH"

pattern EndpointTypesElementSMS :: EndpointTypesElement
pattern EndpointTypesElementSMS = EndpointTypesElement' "SMS"

pattern EndpointTypesElementVOICE :: EndpointTypesElement
pattern EndpointTypesElementVOICE = EndpointTypesElement' "VOICE"

{-# COMPLETE
  EndpointTypesElementADM,
  EndpointTypesElementAPNS,
  EndpointTypesElementAPNSSANDBOX,
  EndpointTypesElementAPNSVOIP,
  EndpointTypesElementAPNSVOIPSANDBOX,
  EndpointTypesElementBAIDU,
  EndpointTypesElementCUSTOM,
  EndpointTypesElementEMAIL,
  EndpointTypesElementGCM,
  EndpointTypesElementPUSH,
  EndpointTypesElementSMS,
  EndpointTypesElementVOICE,
  EndpointTypesElement'
  #-}

instance Prelude.FromText EndpointTypesElement where
  parser = EndpointTypesElement' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndpointTypesElement where
  toText (EndpointTypesElement' x) = x

instance Prelude.Hashable EndpointTypesElement

instance Prelude.NFData EndpointTypesElement

instance Prelude.ToByteString EndpointTypesElement

instance Prelude.ToQuery EndpointTypesElement

instance Prelude.ToHeader EndpointTypesElement

instance Prelude.ToJSON EndpointTypesElement where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EndpointTypesElement where
  parseJSON = Prelude.parseJSONText "EndpointTypesElement"
