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
-- Module      : Network.AWS.Inspector.Types.FailedItemErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.FailedItemErrorCode
  ( FailedItemErrorCode
      ( ..,
        FailedItemErrorCodeACCESSDENIED,
        FailedItemErrorCodeDUPLICATEARN,
        FailedItemErrorCodeINTERNALERROR,
        FailedItemErrorCodeINVALIDARN,
        FailedItemErrorCodeITEMDOESNOTEXIST,
        FailedItemErrorCodeLIMITEXCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FailedItemErrorCode = FailedItemErrorCode'
  { fromFailedItemErrorCode ::
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

pattern FailedItemErrorCodeACCESSDENIED :: FailedItemErrorCode
pattern FailedItemErrorCodeACCESSDENIED = FailedItemErrorCode' "ACCESS_DENIED"

pattern FailedItemErrorCodeDUPLICATEARN :: FailedItemErrorCode
pattern FailedItemErrorCodeDUPLICATEARN = FailedItemErrorCode' "DUPLICATE_ARN"

pattern FailedItemErrorCodeINTERNALERROR :: FailedItemErrorCode
pattern FailedItemErrorCodeINTERNALERROR = FailedItemErrorCode' "INTERNAL_ERROR"

pattern FailedItemErrorCodeINVALIDARN :: FailedItemErrorCode
pattern FailedItemErrorCodeINVALIDARN = FailedItemErrorCode' "INVALID_ARN"

pattern FailedItemErrorCodeITEMDOESNOTEXIST :: FailedItemErrorCode
pattern FailedItemErrorCodeITEMDOESNOTEXIST = FailedItemErrorCode' "ITEM_DOES_NOT_EXIST"

pattern FailedItemErrorCodeLIMITEXCEEDED :: FailedItemErrorCode
pattern FailedItemErrorCodeLIMITEXCEEDED = FailedItemErrorCode' "LIMIT_EXCEEDED"

{-# COMPLETE
  FailedItemErrorCodeACCESSDENIED,
  FailedItemErrorCodeDUPLICATEARN,
  FailedItemErrorCodeINTERNALERROR,
  FailedItemErrorCodeINVALIDARN,
  FailedItemErrorCodeITEMDOESNOTEXIST,
  FailedItemErrorCodeLIMITEXCEEDED,
  FailedItemErrorCode'
  #-}

instance Prelude.FromText FailedItemErrorCode where
  parser = FailedItemErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText FailedItemErrorCode where
  toText (FailedItemErrorCode' x) = x

instance Prelude.Hashable FailedItemErrorCode

instance Prelude.NFData FailedItemErrorCode

instance Prelude.ToByteString FailedItemErrorCode

instance Prelude.ToQuery FailedItemErrorCode

instance Prelude.ToHeader FailedItemErrorCode

instance Prelude.FromJSON FailedItemErrorCode where
  parseJSON = Prelude.parseJSONText "FailedItemErrorCode"
