{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.DialogActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.DialogActionType
  ( DialogActionType
      ( ..,
        DATClose,
        DATConfirmIntent,
        DATDelegate,
        DATElicitIntent,
        DATElicitSlot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DialogActionType = DialogActionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DATClose :: DialogActionType
pattern DATClose = DialogActionType' "Close"

pattern DATConfirmIntent :: DialogActionType
pattern DATConfirmIntent = DialogActionType' "ConfirmIntent"

pattern DATDelegate :: DialogActionType
pattern DATDelegate = DialogActionType' "Delegate"

pattern DATElicitIntent :: DialogActionType
pattern DATElicitIntent = DialogActionType' "ElicitIntent"

pattern DATElicitSlot :: DialogActionType
pattern DATElicitSlot = DialogActionType' "ElicitSlot"

{-# COMPLETE
  DATClose,
  DATConfirmIntent,
  DATDelegate,
  DATElicitIntent,
  DATElicitSlot,
  DialogActionType'
  #-}

instance FromText DialogActionType where
  parser = (DialogActionType' . mk) <$> takeText

instance ToText DialogActionType where
  toText (DialogActionType' ci) = original ci

instance Hashable DialogActionType

instance NFData DialogActionType

instance ToByteString DialogActionType

instance ToQuery DialogActionType

instance ToHeader DialogActionType

instance ToJSON DialogActionType where
  toJSON = toJSONText

instance FromJSON DialogActionType where
  parseJSON = parseJSONText "DialogActionType"
