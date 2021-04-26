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
-- Module      : Network.AWS.Route53.Types.RecordType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.RecordType
  ( RecordType
      ( ..,
        RecordTypeA,
        RecordTypeAAAA,
        RecordTypeCAA,
        RecordTypeCNAME,
        RecordTypeDS,
        RecordTypeMX,
        RecordTypeNAPTR,
        RecordTypeNS,
        RecordTypePTR,
        RecordTypeSOA,
        RecordTypeSPF,
        RecordTypeSRV,
        RecordTypeTXT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype RecordType = RecordType'
  { fromRecordType ::
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

pattern RecordTypeA :: RecordType
pattern RecordTypeA = RecordType' "A"

pattern RecordTypeAAAA :: RecordType
pattern RecordTypeAAAA = RecordType' "AAAA"

pattern RecordTypeCAA :: RecordType
pattern RecordTypeCAA = RecordType' "CAA"

pattern RecordTypeCNAME :: RecordType
pattern RecordTypeCNAME = RecordType' "CNAME"

pattern RecordTypeDS :: RecordType
pattern RecordTypeDS = RecordType' "DS"

pattern RecordTypeMX :: RecordType
pattern RecordTypeMX = RecordType' "MX"

pattern RecordTypeNAPTR :: RecordType
pattern RecordTypeNAPTR = RecordType' "NAPTR"

pattern RecordTypeNS :: RecordType
pattern RecordTypeNS = RecordType' "NS"

pattern RecordTypePTR :: RecordType
pattern RecordTypePTR = RecordType' "PTR"

pattern RecordTypeSOA :: RecordType
pattern RecordTypeSOA = RecordType' "SOA"

pattern RecordTypeSPF :: RecordType
pattern RecordTypeSPF = RecordType' "SPF"

pattern RecordTypeSRV :: RecordType
pattern RecordTypeSRV = RecordType' "SRV"

pattern RecordTypeTXT :: RecordType
pattern RecordTypeTXT = RecordType' "TXT"

{-# COMPLETE
  RecordTypeA,
  RecordTypeAAAA,
  RecordTypeCAA,
  RecordTypeCNAME,
  RecordTypeDS,
  RecordTypeMX,
  RecordTypeNAPTR,
  RecordTypeNS,
  RecordTypePTR,
  RecordTypeSOA,
  RecordTypeSPF,
  RecordTypeSRV,
  RecordTypeTXT,
  RecordType'
  #-}

instance Prelude.FromText RecordType where
  parser = RecordType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecordType where
  toText (RecordType' x) = x

instance Prelude.Hashable RecordType

instance Prelude.NFData RecordType

instance Prelude.ToByteString RecordType

instance Prelude.ToQuery RecordType

instance Prelude.ToHeader RecordType

instance Prelude.FromXML RecordType where
  parseXML = Prelude.parseXMLText "RecordType"

instance Prelude.ToXML RecordType where
  toXML = Prelude.toXMLText
