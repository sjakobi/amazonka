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
-- Module      : Network.AWS.Glue.Types.BackfillErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.BackfillErrorCode
  ( BackfillErrorCode
      ( ..,
        BackfillErrorCodeENCRYPTEDPARTITIONERROR,
        BackfillErrorCodeINTERNALERROR,
        BackfillErrorCodeINVALIDPARTITIONTYPEDATAERROR,
        BackfillErrorCodeMISSINGPARTITIONVALUEERROR,
        BackfillErrorCodeUNSUPPORTEDPARTITIONCHARACTERERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackfillErrorCode = BackfillErrorCode'
  { fromBackfillErrorCode ::
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

pattern BackfillErrorCodeENCRYPTEDPARTITIONERROR :: BackfillErrorCode
pattern BackfillErrorCodeENCRYPTEDPARTITIONERROR = BackfillErrorCode' "ENCRYPTED_PARTITION_ERROR"

pattern BackfillErrorCodeINTERNALERROR :: BackfillErrorCode
pattern BackfillErrorCodeINTERNALERROR = BackfillErrorCode' "INTERNAL_ERROR"

pattern BackfillErrorCodeINVALIDPARTITIONTYPEDATAERROR :: BackfillErrorCode
pattern BackfillErrorCodeINVALIDPARTITIONTYPEDATAERROR = BackfillErrorCode' "INVALID_PARTITION_TYPE_DATA_ERROR"

pattern BackfillErrorCodeMISSINGPARTITIONVALUEERROR :: BackfillErrorCode
pattern BackfillErrorCodeMISSINGPARTITIONVALUEERROR = BackfillErrorCode' "MISSING_PARTITION_VALUE_ERROR"

pattern BackfillErrorCodeUNSUPPORTEDPARTITIONCHARACTERERROR :: BackfillErrorCode
pattern BackfillErrorCodeUNSUPPORTEDPARTITIONCHARACTERERROR = BackfillErrorCode' "UNSUPPORTED_PARTITION_CHARACTER_ERROR"

{-# COMPLETE
  BackfillErrorCodeENCRYPTEDPARTITIONERROR,
  BackfillErrorCodeINTERNALERROR,
  BackfillErrorCodeINVALIDPARTITIONTYPEDATAERROR,
  BackfillErrorCodeMISSINGPARTITIONVALUEERROR,
  BackfillErrorCodeUNSUPPORTEDPARTITIONCHARACTERERROR,
  BackfillErrorCode'
  #-}

instance Prelude.FromText BackfillErrorCode where
  parser = BackfillErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackfillErrorCode where
  toText (BackfillErrorCode' x) = x

instance Prelude.Hashable BackfillErrorCode

instance Prelude.NFData BackfillErrorCode

instance Prelude.ToByteString BackfillErrorCode

instance Prelude.ToQuery BackfillErrorCode

instance Prelude.ToHeader BackfillErrorCode

instance Prelude.FromJSON BackfillErrorCode where
  parseJSON = Prelude.parseJSONText "BackfillErrorCode"
