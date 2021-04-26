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
-- Module      : Network.AWS.AWSHealth.Types.EventScopeCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventScopeCode
  ( EventScopeCode
      ( ..,
        EventScopeCodeACCOUNTSPECIFIC,
        EventScopeCodeNONE,
        EventScopeCodePUBLIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventScopeCode = EventScopeCode'
  { fromEventScopeCode ::
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

pattern EventScopeCodeACCOUNTSPECIFIC :: EventScopeCode
pattern EventScopeCodeACCOUNTSPECIFIC = EventScopeCode' "ACCOUNT_SPECIFIC"

pattern EventScopeCodeNONE :: EventScopeCode
pattern EventScopeCodeNONE = EventScopeCode' "NONE"

pattern EventScopeCodePUBLIC :: EventScopeCode
pattern EventScopeCodePUBLIC = EventScopeCode' "PUBLIC"

{-# COMPLETE
  EventScopeCodeACCOUNTSPECIFIC,
  EventScopeCodeNONE,
  EventScopeCodePUBLIC,
  EventScopeCode'
  #-}

instance Prelude.FromText EventScopeCode where
  parser = EventScopeCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventScopeCode where
  toText (EventScopeCode' x) = x

instance Prelude.Hashable EventScopeCode

instance Prelude.NFData EventScopeCode

instance Prelude.ToByteString EventScopeCode

instance Prelude.ToQuery EventScopeCode

instance Prelude.ToHeader EventScopeCode

instance Prelude.FromJSON EventScopeCode where
  parseJSON = Prelude.parseJSONText "EventScopeCode"
