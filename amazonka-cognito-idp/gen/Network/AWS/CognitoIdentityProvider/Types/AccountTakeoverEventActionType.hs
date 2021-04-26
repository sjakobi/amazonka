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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverEventActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverEventActionType
  ( AccountTakeoverEventActionType
      ( ..,
        AccountTakeoverEventActionTypeBLOCK,
        AccountTakeoverEventActionTypeMFAIFCONFIGURED,
        AccountTakeoverEventActionTypeMFAREQUIRED,
        AccountTakeoverEventActionTypeNOACTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccountTakeoverEventActionType = AccountTakeoverEventActionType'
  { fromAccountTakeoverEventActionType ::
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

pattern AccountTakeoverEventActionTypeBLOCK :: AccountTakeoverEventActionType
pattern AccountTakeoverEventActionTypeBLOCK = AccountTakeoverEventActionType' "BLOCK"

pattern AccountTakeoverEventActionTypeMFAIFCONFIGURED :: AccountTakeoverEventActionType
pattern AccountTakeoverEventActionTypeMFAIFCONFIGURED = AccountTakeoverEventActionType' "MFA_IF_CONFIGURED"

pattern AccountTakeoverEventActionTypeMFAREQUIRED :: AccountTakeoverEventActionType
pattern AccountTakeoverEventActionTypeMFAREQUIRED = AccountTakeoverEventActionType' "MFA_REQUIRED"

pattern AccountTakeoverEventActionTypeNOACTION :: AccountTakeoverEventActionType
pattern AccountTakeoverEventActionTypeNOACTION = AccountTakeoverEventActionType' "NO_ACTION"

{-# COMPLETE
  AccountTakeoverEventActionTypeBLOCK,
  AccountTakeoverEventActionTypeMFAIFCONFIGURED,
  AccountTakeoverEventActionTypeMFAREQUIRED,
  AccountTakeoverEventActionTypeNOACTION,
  AccountTakeoverEventActionType'
  #-}

instance Prelude.FromText AccountTakeoverEventActionType where
  parser = AccountTakeoverEventActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountTakeoverEventActionType where
  toText (AccountTakeoverEventActionType' x) = x

instance Prelude.Hashable AccountTakeoverEventActionType

instance Prelude.NFData AccountTakeoverEventActionType

instance Prelude.ToByteString AccountTakeoverEventActionType

instance Prelude.ToQuery AccountTakeoverEventActionType

instance Prelude.ToHeader AccountTakeoverEventActionType

instance Prelude.ToJSON AccountTakeoverEventActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AccountTakeoverEventActionType where
  parseJSON = Prelude.parseJSONText "AccountTakeoverEventActionType"
