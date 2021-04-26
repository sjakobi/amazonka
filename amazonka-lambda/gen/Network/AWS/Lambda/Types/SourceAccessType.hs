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
-- Module      : Network.AWS.Lambda.Types.SourceAccessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.SourceAccessType
  ( SourceAccessType
      ( ..,
        SourceAccessTypeBASICAUTH,
        SourceAccessTypeSASLSCRAM256AUTH,
        SourceAccessTypeSASLSCRAM512AUTH,
        SourceAccessTypeVPCSECURITYGROUP,
        SourceAccessTypeVPCSUBNET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SourceAccessType = SourceAccessType'
  { fromSourceAccessType ::
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

pattern SourceAccessTypeBASICAUTH :: SourceAccessType
pattern SourceAccessTypeBASICAUTH = SourceAccessType' "BASIC_AUTH"

pattern SourceAccessTypeSASLSCRAM256AUTH :: SourceAccessType
pattern SourceAccessTypeSASLSCRAM256AUTH = SourceAccessType' "SASL_SCRAM_256_AUTH"

pattern SourceAccessTypeSASLSCRAM512AUTH :: SourceAccessType
pattern SourceAccessTypeSASLSCRAM512AUTH = SourceAccessType' "SASL_SCRAM_512_AUTH"

pattern SourceAccessTypeVPCSECURITYGROUP :: SourceAccessType
pattern SourceAccessTypeVPCSECURITYGROUP = SourceAccessType' "VPC_SECURITY_GROUP"

pattern SourceAccessTypeVPCSUBNET :: SourceAccessType
pattern SourceAccessTypeVPCSUBNET = SourceAccessType' "VPC_SUBNET"

{-# COMPLETE
  SourceAccessTypeBASICAUTH,
  SourceAccessTypeSASLSCRAM256AUTH,
  SourceAccessTypeSASLSCRAM512AUTH,
  SourceAccessTypeVPCSECURITYGROUP,
  SourceAccessTypeVPCSUBNET,
  SourceAccessType'
  #-}

instance Prelude.FromText SourceAccessType where
  parser = SourceAccessType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SourceAccessType where
  toText (SourceAccessType' x) = x

instance Prelude.Hashable SourceAccessType

instance Prelude.NFData SourceAccessType

instance Prelude.ToByteString SourceAccessType

instance Prelude.ToQuery SourceAccessType

instance Prelude.ToHeader SourceAccessType

instance Prelude.ToJSON SourceAccessType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SourceAccessType where
  parseJSON = Prelude.parseJSONText "SourceAccessType"
