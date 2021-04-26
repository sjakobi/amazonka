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
-- Module      : Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
  ( UsageReportExecutionErrorCode
      ( ..,
        UsageReportExecutionErrorCodeACCESSDENIED,
        UsageReportExecutionErrorCodeINTERNALSERVICEERROR,
        UsageReportExecutionErrorCodeRESOURCENOTFOUND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UsageReportExecutionErrorCode = UsageReportExecutionErrorCode'
  { fromUsageReportExecutionErrorCode ::
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

pattern UsageReportExecutionErrorCodeACCESSDENIED :: UsageReportExecutionErrorCode
pattern UsageReportExecutionErrorCodeACCESSDENIED = UsageReportExecutionErrorCode' "ACCESS_DENIED"

pattern UsageReportExecutionErrorCodeINTERNALSERVICEERROR :: UsageReportExecutionErrorCode
pattern UsageReportExecutionErrorCodeINTERNALSERVICEERROR = UsageReportExecutionErrorCode' "INTERNAL_SERVICE_ERROR"

pattern UsageReportExecutionErrorCodeRESOURCENOTFOUND :: UsageReportExecutionErrorCode
pattern UsageReportExecutionErrorCodeRESOURCENOTFOUND = UsageReportExecutionErrorCode' "RESOURCE_NOT_FOUND"

{-# COMPLETE
  UsageReportExecutionErrorCodeACCESSDENIED,
  UsageReportExecutionErrorCodeINTERNALSERVICEERROR,
  UsageReportExecutionErrorCodeRESOURCENOTFOUND,
  UsageReportExecutionErrorCode'
  #-}

instance Prelude.FromText UsageReportExecutionErrorCode where
  parser = UsageReportExecutionErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageReportExecutionErrorCode where
  toText (UsageReportExecutionErrorCode' x) = x

instance Prelude.Hashable UsageReportExecutionErrorCode

instance Prelude.NFData UsageReportExecutionErrorCode

instance Prelude.ToByteString UsageReportExecutionErrorCode

instance Prelude.ToQuery UsageReportExecutionErrorCode

instance Prelude.ToHeader UsageReportExecutionErrorCode

instance Prelude.FromJSON UsageReportExecutionErrorCode where
  parseJSON = Prelude.parseJSONText "UsageReportExecutionErrorCode"
