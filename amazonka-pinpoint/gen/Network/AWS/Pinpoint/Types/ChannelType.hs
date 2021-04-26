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
-- Module      : Network.AWS.Pinpoint.Types.ChannelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ChannelType
  ( ChannelType
      ( ..,
        ChannelTypeADM,
        ChannelTypeAPNS,
        ChannelTypeAPNSSANDBOX,
        ChannelTypeAPNSVOIP,
        ChannelTypeAPNSVOIPSANDBOX,
        ChannelTypeBAIDU,
        ChannelTypeCUSTOM,
        ChannelTypeEMAIL,
        ChannelTypeGCM,
        ChannelTypePUSH,
        ChannelTypeSMS,
        ChannelTypeVOICE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChannelType = ChannelType'
  { fromChannelType ::
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

pattern ChannelTypeADM :: ChannelType
pattern ChannelTypeADM = ChannelType' "ADM"

pattern ChannelTypeAPNS :: ChannelType
pattern ChannelTypeAPNS = ChannelType' "APNS"

pattern ChannelTypeAPNSSANDBOX :: ChannelType
pattern ChannelTypeAPNSSANDBOX = ChannelType' "APNS_SANDBOX"

pattern ChannelTypeAPNSVOIP :: ChannelType
pattern ChannelTypeAPNSVOIP = ChannelType' "APNS_VOIP"

pattern ChannelTypeAPNSVOIPSANDBOX :: ChannelType
pattern ChannelTypeAPNSVOIPSANDBOX = ChannelType' "APNS_VOIP_SANDBOX"

pattern ChannelTypeBAIDU :: ChannelType
pattern ChannelTypeBAIDU = ChannelType' "BAIDU"

pattern ChannelTypeCUSTOM :: ChannelType
pattern ChannelTypeCUSTOM = ChannelType' "CUSTOM"

pattern ChannelTypeEMAIL :: ChannelType
pattern ChannelTypeEMAIL = ChannelType' "EMAIL"

pattern ChannelTypeGCM :: ChannelType
pattern ChannelTypeGCM = ChannelType' "GCM"

pattern ChannelTypePUSH :: ChannelType
pattern ChannelTypePUSH = ChannelType' "PUSH"

pattern ChannelTypeSMS :: ChannelType
pattern ChannelTypeSMS = ChannelType' "SMS"

pattern ChannelTypeVOICE :: ChannelType
pattern ChannelTypeVOICE = ChannelType' "VOICE"

{-# COMPLETE
  ChannelTypeADM,
  ChannelTypeAPNS,
  ChannelTypeAPNSSANDBOX,
  ChannelTypeAPNSVOIP,
  ChannelTypeAPNSVOIPSANDBOX,
  ChannelTypeBAIDU,
  ChannelTypeCUSTOM,
  ChannelTypeEMAIL,
  ChannelTypeGCM,
  ChannelTypePUSH,
  ChannelTypeSMS,
  ChannelTypeVOICE,
  ChannelType'
  #-}

instance Prelude.FromText ChannelType where
  parser = ChannelType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelType where
  toText (ChannelType' x) = x

instance Prelude.Hashable ChannelType

instance Prelude.NFData ChannelType

instance Prelude.ToByteString ChannelType

instance Prelude.ToQuery ChannelType

instance Prelude.ToHeader ChannelType

instance Prelude.ToJSON ChannelType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ChannelType where
  parseJSON = Prelude.parseJSONText "ChannelType"
