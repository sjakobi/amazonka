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
-- Module      : Network.AWS.AppStream.Types.StackErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StackErrorCode
  ( StackErrorCode
      ( ..,
        StackErrorCodeINTERNALSERVICEERROR,
        StackErrorCodeSTORAGECONNECTORERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackErrorCode = StackErrorCode'
  { fromStackErrorCode ::
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

pattern StackErrorCodeINTERNALSERVICEERROR :: StackErrorCode
pattern StackErrorCodeINTERNALSERVICEERROR = StackErrorCode' "INTERNAL_SERVICE_ERROR"

pattern StackErrorCodeSTORAGECONNECTORERROR :: StackErrorCode
pattern StackErrorCodeSTORAGECONNECTORERROR = StackErrorCode' "STORAGE_CONNECTOR_ERROR"

{-# COMPLETE
  StackErrorCodeINTERNALSERVICEERROR,
  StackErrorCodeSTORAGECONNECTORERROR,
  StackErrorCode'
  #-}

instance Prelude.FromText StackErrorCode where
  parser = StackErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackErrorCode where
  toText (StackErrorCode' x) = x

instance Prelude.Hashable StackErrorCode

instance Prelude.NFData StackErrorCode

instance Prelude.ToByteString StackErrorCode

instance Prelude.ToQuery StackErrorCode

instance Prelude.ToHeader StackErrorCode

instance Prelude.FromJSON StackErrorCode where
  parseJSON = Prelude.parseJSONText "StackErrorCode"
