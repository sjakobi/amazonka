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
-- Module      : Network.AWS.SSM.Types.CommandFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandFilterKey
  ( CommandFilterKey
      ( ..,
        CommandFilterKeyDocumentName,
        CommandFilterKeyExecutionStage,
        CommandFilterKeyInvokedAfter,
        CommandFilterKeyInvokedBefore,
        CommandFilterKeyStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommandFilterKey = CommandFilterKey'
  { fromCommandFilterKey ::
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

pattern CommandFilterKeyDocumentName :: CommandFilterKey
pattern CommandFilterKeyDocumentName = CommandFilterKey' "DocumentName"

pattern CommandFilterKeyExecutionStage :: CommandFilterKey
pattern CommandFilterKeyExecutionStage = CommandFilterKey' "ExecutionStage"

pattern CommandFilterKeyInvokedAfter :: CommandFilterKey
pattern CommandFilterKeyInvokedAfter = CommandFilterKey' "InvokedAfter"

pattern CommandFilterKeyInvokedBefore :: CommandFilterKey
pattern CommandFilterKeyInvokedBefore = CommandFilterKey' "InvokedBefore"

pattern CommandFilterKeyStatus' :: CommandFilterKey
pattern CommandFilterKeyStatus' = CommandFilterKey' "Status"

{-# COMPLETE
  CommandFilterKeyDocumentName,
  CommandFilterKeyExecutionStage,
  CommandFilterKeyInvokedAfter,
  CommandFilterKeyInvokedBefore,
  CommandFilterKeyStatus',
  CommandFilterKey'
  #-}

instance Prelude.FromText CommandFilterKey where
  parser = CommandFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText CommandFilterKey where
  toText (CommandFilterKey' x) = x

instance Prelude.Hashable CommandFilterKey

instance Prelude.NFData CommandFilterKey

instance Prelude.ToByteString CommandFilterKey

instance Prelude.ToQuery CommandFilterKey

instance Prelude.ToHeader CommandFilterKey

instance Prelude.ToJSON CommandFilterKey where
  toJSON = Prelude.toJSONText
