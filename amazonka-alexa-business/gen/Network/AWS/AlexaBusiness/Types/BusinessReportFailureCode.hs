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
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportFailureCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportFailureCode
  ( BusinessReportFailureCode
      ( ..,
        BusinessReportFailureCodeACCESSDENIED,
        BusinessReportFailureCodeINTERNALFAILURE,
        BusinessReportFailureCodeNOSUCHBUCKET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BusinessReportFailureCode = BusinessReportFailureCode'
  { fromBusinessReportFailureCode ::
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

pattern BusinessReportFailureCodeACCESSDENIED :: BusinessReportFailureCode
pattern BusinessReportFailureCodeACCESSDENIED = BusinessReportFailureCode' "ACCESS_DENIED"

pattern BusinessReportFailureCodeINTERNALFAILURE :: BusinessReportFailureCode
pattern BusinessReportFailureCodeINTERNALFAILURE = BusinessReportFailureCode' "INTERNAL_FAILURE"

pattern BusinessReportFailureCodeNOSUCHBUCKET :: BusinessReportFailureCode
pattern BusinessReportFailureCodeNOSUCHBUCKET = BusinessReportFailureCode' "NO_SUCH_BUCKET"

{-# COMPLETE
  BusinessReportFailureCodeACCESSDENIED,
  BusinessReportFailureCodeINTERNALFAILURE,
  BusinessReportFailureCodeNOSUCHBUCKET,
  BusinessReportFailureCode'
  #-}

instance Prelude.FromText BusinessReportFailureCode where
  parser = BusinessReportFailureCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText BusinessReportFailureCode where
  toText (BusinessReportFailureCode' x) = x

instance Prelude.Hashable BusinessReportFailureCode

instance Prelude.NFData BusinessReportFailureCode

instance Prelude.ToByteString BusinessReportFailureCode

instance Prelude.ToQuery BusinessReportFailureCode

instance Prelude.ToHeader BusinessReportFailureCode

instance Prelude.FromJSON BusinessReportFailureCode where
  parseJSON = Prelude.parseJSONText "BusinessReportFailureCode"
