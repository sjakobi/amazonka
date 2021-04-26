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
-- Module      : Network.AWS.Batch.Types.RetryAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.RetryAction
  ( RetryAction
      ( ..,
        RetryActionEXIT,
        RetryActionRETRY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RetryAction = RetryAction'
  { fromRetryAction ::
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

pattern RetryActionEXIT :: RetryAction
pattern RetryActionEXIT = RetryAction' "EXIT"

pattern RetryActionRETRY :: RetryAction
pattern RetryActionRETRY = RetryAction' "RETRY"

{-# COMPLETE
  RetryActionEXIT,
  RetryActionRETRY,
  RetryAction'
  #-}

instance Prelude.FromText RetryAction where
  parser = RetryAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText RetryAction where
  toText (RetryAction' x) = x

instance Prelude.Hashable RetryAction

instance Prelude.NFData RetryAction

instance Prelude.ToByteString RetryAction

instance Prelude.ToQuery RetryAction

instance Prelude.ToHeader RetryAction

instance Prelude.ToJSON RetryAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RetryAction where
  parseJSON = Prelude.parseJSONText "RetryAction"
